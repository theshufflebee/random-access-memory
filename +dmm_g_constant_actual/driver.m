%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clearvars -global
clear_persistent_variables(fileparts(which('dynare')), false)
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info
options_ = [];
M_.fname = 'dmm_g_constant_actual';
M_.dynare_version = '6.5';
oo_.dynare_version = '6.5';
options_.dynare_version = '6.5';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(1,1);
M_.exo_names_tex = cell(1,1);
M_.exo_names_long = cell(1,1);
M_.exo_names(1) = {'epsilon'};
M_.exo_names_tex(1) = {'epsilon'};
M_.exo_names_long(1) = {'epsilon'};
M_.endo_names = cell(17,1);
M_.endo_names_tex = cell(17,1);
M_.endo_names_long = cell(17,1);
M_.endo_names(1) = {'c'};
M_.endo_names_tex(1) = {'c'};
M_.endo_names_long(1) = {'c'};
M_.endo_names(2) = {'h'};
M_.endo_names_tex(2) = {'h'};
M_.endo_names_long(2) = {'h'};
M_.endo_names(3) = {'k'};
M_.endo_names_tex(3) = {'k'};
M_.endo_names_long(3) = {'k'};
M_.endo_names(4) = {'x'};
M_.endo_names_tex(4) = {'x'};
M_.endo_names_long(4) = {'x'};
M_.endo_names(5) = {'y'};
M_.endo_names_tex(5) = {'y'};
M_.endo_names_long(5) = {'y'};
M_.endo_names(6) = {'w'};
M_.endo_names_tex(6) = {'w'};
M_.endo_names_long(6) = {'w'};
M_.endo_names(7) = {'r'};
M_.endo_names_tex(7) = {'r'};
M_.endo_names_long(7) = {'r'};
M_.endo_names(8) = {'p_hat'};
M_.endo_names_tex(8) = {'p\_hat'};
M_.endo_names_long(8) = {'p_hat'};
M_.endo_names(9) = {'z'};
M_.endo_names_tex(9) = {'z'};
M_.endo_names_long(9) = {'z'};
M_.endo_names(10) = {'k_state'};
M_.endo_names_tex(10) = {'k\_state'};
M_.endo_names_long(10) = {'k_state'};
M_.endo_names(11) = {'log_y'};
M_.endo_names_tex(11) = {'log\_y'};
M_.endo_names_long(11) = {'log_y'};
M_.endo_names(12) = {'log_c'};
M_.endo_names_tex(12) = {'log\_c'};
M_.endo_names_long(12) = {'log_c'};
M_.endo_names(13) = {'log_x'};
M_.endo_names_tex(13) = {'log\_x'};
M_.endo_names_long(13) = {'log_x'};
M_.endo_names(14) = {'log_h'};
M_.endo_names_tex(14) = {'log\_h'};
M_.endo_names_long(14) = {'log_h'};
M_.endo_names(15) = {'log_k_state'};
M_.endo_names_tex(15) = {'log\_k\_state'};
M_.endo_names_long(15) = {'log_k_state'};
M_.endo_names(16) = {'log_prod'};
M_.endo_names_tex(16) = {'log\_prod'};
M_.endo_names_long(16) = {'log_prod'};
M_.endo_names(17) = {'log_p_hat'};
M_.endo_names_tex(17) = {'log\_p\_hat'};
M_.endo_names_long(17) = {'log_p_hat'};
M_.endo_partitions = struct();
M_.param_names = cell(7,1);
M_.param_names_tex = cell(7,1);
M_.param_names_long = cell(7,1);
M_.param_names(1) = {'gamma'};
M_.param_names_tex(1) = {'gamma'};
M_.param_names_long(1) = {'gamma'};
M_.param_names(2) = {'alpha'};
M_.param_names_tex(2) = {'alpha'};
M_.param_names_long(2) = {'alpha'};
M_.param_names(3) = {'theta'};
M_.param_names_tex(3) = {'theta'};
M_.param_names_long(3) = {'theta'};
M_.param_names(4) = {'B'};
M_.param_names_tex(4) = {'B'};
M_.param_names_long(4) = {'B'};
M_.param_names(5) = {'delta'};
M_.param_names_tex(5) = {'delta'};
M_.param_names_long(5) = {'delta'};
M_.param_names(6) = {'beta'};
M_.param_names_tex(6) = {'beta'};
M_.param_names_long(6) = {'beta'};
M_.param_names(7) = {'g_bar'};
M_.param_names_tex(7) = {'g\_bar'};
M_.param_names_long(7) = {'g_bar'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 17;
M_.param_nbr = 7;
M_.orig_endo_nbr = 17;
M_.aux_vars = [];
M_.Sigma_e = zeros(1, 1);
M_.Correlation_matrix = eye(1, 1);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.learnt_shocks = [];
M_.learnt_endval = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
M_.matched_irfs = {};
M_.matched_irfs_weights = {};
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.ramsey_policy = false;
options_.discretionary_policy = false;
M_.nonzero_hessian_eqs = [1 2 3 4 5 6 7 9 11 12 13 14 15 16 17];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.eq_nbr = 17;
M_.ramsey_orig_eq_nbr = 0;
M_.ramsey_orig_endo_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 3 20;
 0 4 0;
 1 5 0;
 0 6 0;
 0 7 0;
 0 8 21;
 0 9 22;
 0 10 23;
 2 11 0;
 0 12 0;
 0 13 0;
 0 14 0;
 0 15 0;
 0 16 0;
 0 17 0;
 0 18 0;
 0 19 0;]';
M_.nstatic = 11;
M_.nfwrd   = 4;
M_.npred   = 2;
M_.nboth   = 0;
M_.nsfwrd   = 4;
M_.nspred   = 2;
M_.ndynamic   = 6;
M_.dynamic_tmp_nbr = [7; 8; 3; 0; ];
M_.equations_tags = {
  1 , 'name' , '1' ;
  2 , 'name' , '2' ;
  3 , 'name' , '3' ;
  4 , 'name' , '4' ;
  5 , 'name' , 'w' ;
  6 , 'name' , 'r' ;
  7 , 'name' , 'y' ;
  8 , 'name' , 'x' ;
  9 , 'name' , '9' ;
  10 , 'name' , 'k_state' ;
  11 , 'name' , 'log_y' ;
  12 , 'name' , 'log_c' ;
  13 , 'name' , 'log_x' ;
  14 , 'name' , 'log_h' ;
  15 , 'name' , 'log_k_state' ;
  16 , 'name' , 'log_prod' ;
  17 , 'name' , 'log_p_hat' ;
};
M_.mapping.c.eqidx = [2 3 8 12 ];
M_.mapping.h.eqidx = [4 5 6 7 14 16 ];
M_.mapping.k.eqidx = [4 5 6 7 10 ];
M_.mapping.x.eqidx = [8 13 ];
M_.mapping.y.eqidx = [7 8 11 16 ];
M_.mapping.w.eqidx = [1 2 4 5 ];
M_.mapping.r.eqidx = [1 4 6 ];
M_.mapping.p_hat.eqidx = [2 3 4 17 ];
M_.mapping.z.eqidx = [5 6 7 9 ];
M_.mapping.k_state.eqidx = [10 15 ];
M_.mapping.log_y.eqidx = [11 ];
M_.mapping.log_c.eqidx = [12 ];
M_.mapping.log_x.eqidx = [13 ];
M_.mapping.log_h.eqidx = [14 ];
M_.mapping.log_k_state.eqidx = [15 ];
M_.mapping.log_prod.eqidx = [16 ];
M_.mapping.log_p_hat.eqidx = [17 ];
M_.mapping.epsilon.eqidx = [9 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.block_structure.time_recursive = false;
M_.block_structure.block(1).Simulation_Type = 3;
M_.block_structure.block(1).endo_nbr = 1;
M_.block_structure.block(1).mfs = 1;
M_.block_structure.block(1).equation = [ 9];
M_.block_structure.block(1).variable = [ 9];
M_.block_structure.block(1).is_linear = false;
M_.block_structure.block(1).NNZDerivatives = 2;
M_.block_structure.block(1).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(2).Simulation_Type = 8;
M_.block_structure.block(2).endo_nbr = 6;
M_.block_structure.block(2).mfs = 6;
M_.block_structure.block(2).equation = [ 5 4 2 3 6 1];
M_.block_structure.block(2).variable = [ 2 3 8 1 7 6];
M_.block_structure.block(2).is_linear = false;
M_.block_structure.block(2).NNZDerivatives = 21;
M_.block_structure.block(2).bytecode_jacob_cols_to_sparse = [2 7 8 9 10 11 12 15 16 17 18 ];
M_.block_structure.block(3).Simulation_Type = 1;
M_.block_structure.block(3).endo_nbr = 10;
M_.block_structure.block(3).mfs = 10;
M_.block_structure.block(3).equation = [ 7 16 10 15 17 8 14 13 12 11];
M_.block_structure.block(3).variable = [ 5 16 10 15 17 4 14 13 12 11];
M_.block_structure.block(3).is_linear = true;
M_.block_structure.block(3).NNZDerivatives = 15;
M_.block_structure.block(3).bytecode_jacob_cols_to_sparse = [11 12 13 14 15 16 17 18 19 20 ];
M_.block_structure.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(2).g1_sparse_rowval = int32([1 2 5 1 2 5 2 2 3 4 4 2 5 1 2 3 6 3 3 6 6 ]);
M_.block_structure.block(2).g1_sparse_colval = int32([2 2 2 7 7 7 8 9 9 9 10 11 11 12 12 12 12 15 16 17 18 ]);
M_.block_structure.block(2).g1_sparse_colptr = int32([1 1 4 4 4 4 4 7 8 11 12 14 18 18 18 19 20 21 22 ]);
M_.block_structure.block(3).g1_sparse_rowval = int32([]);
M_.block_structure.block(3).g1_sparse_colval = int32([]);
M_.block_structure.block(3).g1_sparse_colptr = int32([]);
M_.block_structure.variable_reordered = [ 9 2 3 8 1 7 6 5 16 10 15 17 4 14 13 12 11];
M_.block_structure.equation_reordered = [ 9 5 4 2 3 6 1 7 16 10 15 17 8 14 13 12 11];
M_.block_structure.incidence(1).lead_lag = -1;
M_.block_structure.incidence(1).sparse_IM = [
 4 3;
 5 3;
 6 3;
 7 3;
 9 9;
 10 3;
];
M_.block_structure.incidence(2).lead_lag = 0;
M_.block_structure.incidence(2).sparse_IM = [
 1 6;
 2 6;
 2 8;
 3 1;
 3 8;
 4 2;
 4 3;
 4 6;
 4 7;
 4 8;
 5 2;
 5 6;
 5 9;
 6 2;
 6 7;
 6 9;
 7 2;
 7 5;
 7 9;
 8 1;
 8 4;
 8 5;
 9 9;
 10 10;
 11 5;
 11 11;
 12 1;
 12 12;
 13 4;
 13 13;
 14 2;
 14 14;
 15 10;
 15 15;
 16 2;
 16 5;
 16 16;
 17 8;
 17 17;
];
M_.block_structure.incidence(3).lead_lag = 1;
M_.block_structure.incidence(3).sparse_IM = [
 1 6;
 1 7;
 2 1;
 2 8;
];
M_.block_structure.dyn_tmp_nbr = 2;
M_.state_var = [9 3 ];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(17, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(7, 1);
M_.endo_trends = struct('deflator', cell(17, 1), 'log_deflator', cell(17, 1), 'growth_factor', cell(17, 1), 'log_growth_factor', cell(17, 1));
M_.NNZDerivatives = [50; 58; -1; ];
M_.dynamic_g1_sparse_rowval = int32([4 5 6 7 10 9 3 8 12 4 5 6 7 14 16 4 8 13 7 8 11 16 1 2 4 5 4 6 2 3 4 17 5 6 7 9 10 15 11 12 13 14 15 16 17 2 1 1 2 9 ]);
M_.dynamic_g1_sparse_colval = int32([3 3 3 3 3 9 18 18 18 19 19 19 19 19 19 20 21 21 22 22 22 22 23 23 23 23 24 24 25 25 25 25 26 26 26 26 27 27 28 29 30 31 32 33 34 35 40 41 42 52 ]);
M_.dynamic_g1_sparse_colptr = int32([1 1 1 6 6 6 6 6 6 7 7 7 7 7 7 7 7 7 10 16 17 19 23 27 29 33 37 39 40 41 42 43 44 45 46 47 47 47 47 47 48 49 50 50 50 50 50 50 50 50 50 50 51 ]);
M_.dynamic_g2_sparse_indices = int32([1 23 40 ;
1 23 41 ;
1 40 40 ;
1 40 41 ;
2 35 35 ;
2 35 42 ;
2 23 23 ;
2 23 25 ;
2 25 25 ;
2 42 42 ;
3 18 25 ;
4 19 23 ;
4 3 24 ;
4 25 25 ;
5 19 19 ;
5 19 3 ;
5 19 26 ;
5 3 3 ;
5 3 26 ;
6 19 19 ;
6 19 3 ;
6 19 26 ;
6 3 3 ;
6 3 26 ;
7 19 19 ;
7 19 3 ;
7 19 26 ;
7 3 3 ;
7 3 26 ;
9 9 9 ;
9 26 26 ;
11 22 22 ;
12 18 18 ;
13 21 21 ;
14 19 19 ;
15 27 27 ;
16 19 19 ;
16 19 22 ;
16 22 22 ;
17 25 25 ;
]);
M_.lhs = {
'beta*w/w(1)*(1-delta+r(1))'; 
'beta/(g_bar*c(1)*p_hat(1))'; 
'p_hat*c'; 
'k+1/p_hat'; 
'w'; 
'r'; 
'y'; 
'x'; 
'log(z)'; 
'k_state'; 
'log_y'; 
'log_c'; 
'log_x'; 
'log_h'; 
'log_k_state'; 
'log_prod'; 
'log_p_hat'; 
};
M_.static_tmp_nbr = [6; 3; 0; 0; ];
M_.block_structure_stat.block(1).Simulation_Type = 3;
M_.block_structure_stat.block(1).endo_nbr = 1;
M_.block_structure_stat.block(1).mfs = 1;
M_.block_structure_stat.block(1).equation = [ 1];
M_.block_structure_stat.block(1).variable = [ 7];
M_.block_structure_stat.block(2).Simulation_Type = 3;
M_.block_structure_stat.block(2).endo_nbr = 1;
M_.block_structure_stat.block(2).mfs = 1;
M_.block_structure_stat.block(2).equation = [ 9];
M_.block_structure_stat.block(2).variable = [ 9];
M_.block_structure_stat.block(3).Simulation_Type = 6;
M_.block_structure_stat.block(3).endo_nbr = 5;
M_.block_structure_stat.block(3).mfs = 5;
M_.block_structure_stat.block(3).equation = [ 3 4 5 6 2];
M_.block_structure_stat.block(3).variable = [ 1 8 3 2 6];
M_.block_structure_stat.block(4).Simulation_Type = 1;
M_.block_structure_stat.block(4).endo_nbr = 10;
M_.block_structure_stat.block(4).mfs = 10;
M_.block_structure_stat.block(4).equation = [ 7 16 10 15 17 8 14 13 12 11];
M_.block_structure_stat.block(4).variable = [ 5 16 10 15 17 4 14 13 12 11];
M_.block_structure_stat.variable_reordered = [ 7 9 1 8 3 2 6 5 16 10 15 17 4 14 13 12 11];
M_.block_structure_stat.equation_reordered = [ 1 9 3 4 5 6 2 7 16 10 15 17 8 14 13 12 11];
M_.block_structure_stat.incidence.sparse_IM = [
 1 7;
 2 1;
 2 6;
 2 8;
 3 1;
 3 8;
 4 2;
 4 3;
 4 6;
 4 7;
 4 8;
 5 2;
 5 3;
 5 6;
 5 9;
 6 2;
 6 3;
 6 7;
 6 9;
 7 2;
 7 3;
 7 5;
 7 9;
 8 1;
 8 4;
 8 5;
 9 9;
 10 3;
 10 10;
 11 5;
 11 11;
 12 1;
 12 12;
 13 4;
 13 13;
 14 2;
 14 14;
 15 10;
 15 15;
 16 2;
 16 5;
 16 16;
 17 8;
 17 17;
];
M_.block_structure_stat.tmp_nbr = 3;
M_.block_structure_stat.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(2).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(2).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(2).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(3).g1_sparse_rowval = int32([1 5 1 2 5 2 3 4 2 3 4 2 3 5 ]);
M_.block_structure_stat.block(3).g1_sparse_colval = int32([1 1 2 2 2 3 3 3 4 4 4 5 5 5 ]);
M_.block_structure_stat.block(3).g1_sparse_colptr = int32([1 3 6 9 12 15 ]);
M_.block_structure_stat.block(4).g1_sparse_rowval = int32([]);
M_.block_structure_stat.block(4).g1_sparse_colval = int32([]);
M_.block_structure_stat.block(4).g1_sparse_colptr = int32([]);
M_.static_g1_sparse_rowval = int32([2 3 8 12 4 5 6 7 14 16 4 5 6 7 10 8 13 7 8 11 16 2 4 5 1 4 6 2 3 4 17 5 6 7 9 10 15 11 12 13 14 15 16 17 ]);
M_.static_g1_sparse_colval = int32([1 1 1 1 2 2 2 2 2 2 3 3 3 3 3 4 4 5 5 5 5 6 6 6 7 7 7 8 8 8 8 9 9 9 9 10 10 11 12 13 14 15 16 17 ]);
M_.static_g1_sparse_colptr = int32([1 5 11 16 18 22 25 28 32 36 38 39 40 41 42 43 44 45 ]);
graphics_toolkit("gnuplot");
M_.params(6) = 0.99;
beta = M_.params(6);
M_.params(3) = 0.36;
theta = M_.params(3);
M_.params(5) = 0.025;
delta = M_.params(5);
M_.params(4) = 2.86;
B = M_.params(4);
M_.params(1) = 0.95;
gamma = M_.params(1);
M_.params(2) = 0.48;
alpha = M_.params(2);
M_.params(7) = 1.00;
g_bar = M_.params(7);
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(9) = 1;
oo_.steady_state(7) = 1/M_.params(6)-(1-M_.params(5));
oo_.steady_state(6) = (1-M_.params(3))*(oo_.steady_state(7)/M_.params(3))^(M_.params(3)/(M_.params(3)-1));
oo_.steady_state(1) = M_.params(6)*oo_.steady_state(6)/(M_.params(7)*M_.params(4));
oo_.steady_state(8) = 1/oo_.steady_state(1);
oo_.steady_state(3) = oo_.steady_state(1)/(oo_.steady_state(7)/M_.params(3)-M_.params(5));
oo_.steady_state(2) = (oo_.steady_state(7)/M_.params(3))^(1/(1-M_.params(3)))*oo_.steady_state(3);
oo_.steady_state(5) = oo_.steady_state(3)^M_.params(3)*oo_.steady_state(2)^(1-M_.params(3));
oo_.steady_state(4) = oo_.steady_state(5)-oo_.steady_state(1);
oo_.steady_state(10) = oo_.steady_state(3);
oo_.steady_state(11) = log(oo_.steady_state(5));
oo_.steady_state(12) = log(oo_.steady_state(1));
oo_.steady_state(13) = log(oo_.steady_state(4));
oo_.steady_state(14) = log(oo_.steady_state(2));
oo_.steady_state(15) = log(oo_.steady_state(3));
oo_.steady_state(16) = log(oo_.steady_state(5)/oo_.steady_state(2));
oo_.steady_state(17) = log(oo_.steady_state(8));
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
steady;
options_resid_ = struct();
display_static_residuals(M_, options_, oo_, options_resid_);
oo_.dr.eigval = check(M_,options_,oo_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 5.19841e-05;
options_.graph_format = {'pdf';'eps'};
options_.hp_filter = 1600;
options_.irf = 115;
options_.nodisplay = true;
options_.order = 2;
options_.periods = 1000;
var_list_ = {'log_y';'log_c';'log_x';'log_k_state';'log_h';'log_prod';'log_p_hat';'z'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
simulated_values = oo_.endo_simul;
    % 1. Extract variable names and their steady state values
    names_ss = M_.endo_names;
    values_ss = oo_.steady_state;
    % 2. Create and open the CSV file
    fid = fopen('steady_state_values_g_constant.csv', 'w');
    
    % 3. Write the header
    fprintf(fid, 'Variable,Value\n');
    % 4. Loop through variables and write each row
    for i = 1:length(names_ss)
        fprintf(fid, '%s,%.10f\n', names_ss{i}, values_ss(i));
    end
    % 5. Close the file and print confirmation to the command window
    fclose(fid);
    disp('SUCCESS: Steady-state values exported to steady_state_values.csv');


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'dmm_g_constant_actual_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'dmm_g_constant_actual_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'dmm_g_constant_actual_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'dmm_g_constant_actual_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'dmm_g_constant_actual_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'dmm_g_constant_actual_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'dmm_g_constant_actual_results.mat'], 'oo_recursive_', '-append');
end
if exist('options_mom_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'dmm_g_constant_actual_results.mat'], 'options_mom_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
