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
    parameters gamma alpha theta B delta beta ghat;


// Parameterisation
	
    beta = 0.99;     
    theta = 0.36;
    delta = 0.025;
    B = 2.86;
    gamma = 0.95;
    alpha = 0.48;
    ghat = 1.00;

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
    log(g) = alpha*log(g(-1)) + (1-alpha)*log(ghat) + xi;

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
    g = ghat;
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

verbatim;
    % 1. Extract variable names and their steady state values
    names_ss = M_.endo_names;
    values_ss = oo_.steady_state;

    % 2. Create and open the CSV file
    fid = fopen('steady_state_values_g_1_00.csv', 'w');
    
    % 3. Write the header
    fprintf(fid, 'Variable,Value\n');

    % 4. Loop through variables and write each row
    for i = 1:length(names_ss)
        fprintf(fid, '%s,%.10f\n', names_ss{i}, values_ss(i));
    end

    % 5. Close the file and print confirmation to the command window
    fclose(fid);
    disp('SUCCESS: Steady-state values exported to steady_state_values.csv');
end;



// simulated_steady_state_values = oo_.steady_state; 

// Note: Add pruning as an option?? And Tex



// Biiiig Changes: 
//  * adding logs
//  * adding hp filter
//  * 1000 periods