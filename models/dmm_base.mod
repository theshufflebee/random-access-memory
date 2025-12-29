// RBC model w/ Inflation Tax 
//***********************************************************

graphics_toolkit("gnuplot");

// Preamble
//***********************************************************

// Declare variables and parameters

    // We have the 10 variables described in section 2.3.1 of our paper
    // In addition to that, we define "k_state", which is the capital stock at 
    //  beginning of the period (otherwise do not get similar values for capital)
    // We also add the 7 variables present in the original papers' tables 1 and 2, in logs
    //  and we will later de-trend them using an HP filter. We do these 2 operations as 
    //  that is how Cooley and Hansen describe their variables in the footnote of table 1.
    // Finally, we also have the 2 exogenous shocks, epislon and xi, and the parameters 
    //  all in the same notation as in our paper.

    var c h k x y w r p_hat z g;
    var k_state log_y log_c log_x log_h log_k_state log_prod log_p_hat; 
    varexo epsilon xi;
    parameters gamma alpha theta B delta beta g_bar;


// Parameterisation

    // Parameters calibrated as in the original paper 
    //  (section 2.4 in our replication paper)
	
    beta = 0.99;     
    theta = 0.36;
    delta = 0.025;
    B = 2.86;
    gamma = 0.95;
    alpha = 0.48;
    g_bar = 1.024;


// Model
//***********************************************************

model;

    // Equations as shown in section 2.3.1
    // Note that the technology z seems different here but its
    //  just the way we define it in the derivation vs here.
    //  They are totally equivalent however (log vs exp)

    beta * w / (w(+1)) * (1-delta+r(+1)) = 1;                 // Euler
    beta / (g(+1) * c(+1) * p_hat(+1)) = B / (w * p_hat);     // Labour Supply
    p_hat * c = 1;                                            // CIA
    k + 1 / (p_hat) = r * k(-1) + (1-delta) * k(-1) + w * h;  // BC 
    w = (1-theta) * z * (k(-1) / h)^theta;                    // Labour Demand
    r = theta * z * (k(-1) / h)^(theta-1);                    // Capital Demand
    y = z*(k(-1))^theta * h^(1-theta);                        // Production
    x = y - c;                                                // Market Clearing
    log(z) = gamma * log(z(-1)) + epsilon;                    // Technology
    log(g) = (1-alpha)*log(g_bar) + alpha*log(g(-1)) + xi;    // Money Growth


    // As described earlier, to match the original paper's 
    //  variables in Table 1, we must take them in logs
    //  and adjust the timing of the capital stock.

    k_state = k(-1);          
    log_y = log(y);           
    log_c = log(c);
    log_x = log(x);
    log_h = log(h);
    log_k_state = log(k_state);
    log_prod = log(y/h);
    log_p_hat = log(p_hat);

end;


// Steady State
//***********************************************************

// Give an initial value to compute the SS: 

initval;

    // Base model as derived in section 2.3.2, but in a different
    //  order based on Dynare requirements. 

    g = g_bar;
    z = 1;
    r = 1 / beta - (1-delta);
    w = (1-theta) * (r / theta)^(theta / (theta-1));
    c = (beta * w / (g * B));
    p_hat = 1/c;
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
    log_p_hat = log(p_hat); 

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

// We provide shocks on a duration of 115, but with periods=1000 otherwise we do not
//  obtain values close to the original paper. We include the HP filter to detrend 
//  the variables. We look at the effect of shocks on the key variables of Table 1.

stoch_simul(irf=115, order=2, periods=1000, hp_filter=1600, graph_format = (pdf, eps), nodisplay) log_y log_c log_x log_k_state log_h log_prod log_p_hat z g;

simulated_values = oo_.endo_simul;

// we export steady state values directly to a CSV file via verbatim commands
// Adjust the name of the file as needed, especially for different g_bar values
// in our replication we adjust g above and here in the file name accordingly to extract steady state values to csv

verbatim;
    % Extract variable names and their steady state values
    names_ss = M_.endo_names;
    values_ss = oo_.steady_state;

    % Create and open the CSV file
    fid = fopen('steady_state_values_g_1_024.csv', 'w');
    
    % Write the header / variale names  
    fprintf(fid, 'Variable,Value\n');

    %Loop through variables and write each row
    for i = 1:length(names_ss)
        fprintf(fid, '%s,%.10f\n', names_ss{i}, values_ss(i));
    end

    % Close the file and print confirmation to the command window
    fclose(fid);
    disp('SUCCESS: Steady-state values exported to csv');
end;



// simulated_steady_state_values = oo_.steady_state; 

