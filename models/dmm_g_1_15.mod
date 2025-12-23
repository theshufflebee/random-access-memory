// RBC model w/ Inflation Tax
//***********************************************************

graphics_toolkit("gnuplot");

// Preamble
//***********************************************************

// Declare variables and parameters
// Make sure there are as many equations as endogenous variables

    var c h k x y w r phat z g;
    var k_state log_y log_c log_x log_h log_k_state log_prod log_phat; 
    varexo epsilon xi;
    parameters gamma alpha theta B delta beta g_bar;


// Parameterisation
	
    beta = 0.99;     
    theta = 0.36;
    delta = 0.025;
    B = 2.86;
    gamma = 0.95;
    alpha = 0.48;
    g_bar = 1.15;

// Model
//***********************************************************

model;

    // Base model as derived
    beta * w / (w(+1)) * (1-delta+r(+1)) = 1;
    beta / (g(+1) * c(+1) * phat(+1)) = B / (w * phat);
    phat * c = 1;
    k + 1 / (phat) = r * k(-1) + (1-delta) * k(-1) + w * h;
    w = (1-theta) * z * (k(-1) / h)^theta;
    r = theta * z * (k(-1) / h)^(theta-1);
    y = z*(k(-1))^theta * h^(1-theta);
    x = y - c;
    log(z) = gamma * log(z(-1)) + epsilon;
    log(g) = alpha*log(g(-1)) + (1-alpha)*log(g_bar) + xi;

    // To match paper 
    k_state = k(-1);          
    log_y = log(y);           
    log_c = log(c);
    log_x = log(x);
    log_h = log(h);
    log_k_state = log(k_state);
    log_prod = log(y/h);
    log_phat = log(phat);

end;


// Steady State
//***********************************************************
// Give an initial value to compute the SS: 
// Notation: VARIABLE_NAME = EXPRESSION
// LHS always ONLY has one variable!!!
// Need to give an initial value/expression for every variable
// Note: Must be in order! 

initval;

    // Base model as derived
    g = g_bar;
    z = 1;
    r = 1 / beta - (1-delta);
    w = (1-theta) * (r / theta)^(theta / (theta-1));
    c = (beta * w / (g * B));
    phat = 1/c;
    k = c / (r / theta - delta);
    h = (r / theta)^(1 / (1-theta)) * k;
    y = k^theta * h^(1-theta);
    x = y - c;
    
    // To match paper
    k_state = k;
    log_y = log(y);
    log_c = log(c);
    log_x = log(x);
    log_h = log(h);
    log_k_state = log(k);
    log_prod = log(y/h);
    log_phat = log(phat); 

end;

steady;  // These 3 commands help check that SS is in fact correct
resid;  
check;


// Specification of Shocks
//***********************************************************

shocks;

    var epsilon = 0.00721^2;
    var xi = 0.009^2;

end;


// Computation
//***********************************************************

stoch_simul(irf=115, order=2, periods=1000, hp_filter=1600, graph_format = (pdf, eps), nodisplay) log_y log_c log_x log_k_state log_h log_prod log_phat z g;

simulated_values = oo_.endo_simul;

//**************************************************************
// Calculation of the Price Level and its Correlation with Output
// Manually done as p_hat isn't the price level reported in the Paper

// Get the indices of the variables we need from the simulation results
idx_g     = strmatch('g', M_.endo_names, 'exact');
idx_phat  = strmatch('log_phat', M_.endo_names, 'exact');
idx_y     = strmatch('log_y', M_.endo_names, 'exact');

// Extract the simulated data (1 x T vectors)
sim_g     = oo_.endo_simul(idx_g, :);       // Gross money growth (g)
sim_phat  = oo_.endo_simul(idx_phat, :);    // log(phat)
sim_y     = oo_.endo_simul(idx_y, :);       // log(output)

// Construct Nominal Money Stock (log M)
//    Rule: log(M_t) = log(M_{t-1}) + log(g_t)
//    We use cumulative sum of log(g) to create the random walk component
sim_log_M = cumsum(log(sim_g));

// Construct Nominal Price Level (log P)
//    Rule: P = phat * M  --> log(P) = log(phat) + log(M)
sim_log_P = sim_phat + sim_log_M;

// Detrend the newly created non-stationary Price Level
//    We use Dynare's 'sample_hp_filter' with lambda = 1600
[trend_P, cycle_P] = sample_hp_filter(sim_log_P', 1600);
[trend_Y, cycle_Y] = sample_hp_filter(sim_y', 1600);

// Calculate and Display the Correlation
corr_P_Y = corr(cycle_P, cycle_Y);

fprintf('\n----------------------------------------------------\n');
fprintf('CALCULATED MOMENTS FOR NOMINAL VARIABLES\n');
fprintf('Correlation(Output, Nominal Price Level): %8.4f\n', corr_P_Y);
fprintf('----------------------------------------------------\n');

// simulated_steady_state_values = oo_.steady_state; 

// Note: Add pruning as an option?? And Tex



// Biiiig Changes: 
//  * adding logs
//  * adding hp filter
//  * 1000 periods