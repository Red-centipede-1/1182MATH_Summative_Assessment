% --- Task A1: --- 
%   Objective: Develop A Matlab script to 

% -- Display Circuit in both domains --

%   Upload png to provide visual guide for users
fig = figure('Name', 'Circuit Figure');
imshow('Figures/math_figure_A.png');
title('Circuit Diagram (Time Domain): ')


%   Upload png to provide visual guide for users after laplace forward
%   transform
fig_transformed = figure('Name', 'Circuit Figure Laplace  Domain');
imshow('Figures/transformed_math_figure_A.png');
title('Circuit Diagram (Laplace Domain): ')

% -- Print equations -- 
% Print explanation  message to user in chat
fprintf('\n\n\nSolving for I1, I2, & I3 using ohms law: \n    ohms law: ((sum of voltage) = (sum of resitors) * i )\n\n')

% Print I1 calculations
fprintf('I1 calculations: \n')
fprintf('   V_in(s) - V_ c2(s) - V_c3(s) = (1/C_1(S))(i_1(s)) +  (1/C_2(S))(i_1(s) - i_2(s)) \n')
%fprintf('   %f - %f - V_c3(s) = (1/C_1(S))(i_1(s)) +  (1/C_2(S))(i_1(s) - i_2(s)) \n')
fprintf(['\n   Note: \n    *   after doing a forward laplace transform, the circuit is in the frequency domain, \n    ' ...
    'the capacitors and inductors act like a resistor would when it comes to calculations\n\n'])

% Print I2 calculations
fprintf('I2 calculations: \n')
fprintf('   V_in(s) - V_ c2(s) - V_c3(s) = (1/C_1(S))(i_1(s)) +  (1/C_2(S))(i_1(s) - i_2(s)) \n')
%fprintf('   %f - %f - V_c3(s) = (1/C_1(S))(i_1(s)) +  (1/C_2(S))(i_1(s) - i_2(s)) \n')
fprintf(['\n   Note: \n    *   \n\n'])


% Print I3 calculations
fprintf('I3 calculations: \n')
fprintf('   V_in(s) - V_ c2(s) - V_c3(s) = (1/C_1(S))(i_1(s)) +  (1/C_2(S))(i_1(s) - i_2(s)) \n')
%fprintf('   %f - %f - V_c3(s) = (1/C_1(S))(i_1(s)) +  (1/C_2(S))(i_1(s) - i_2(s)) \n')
fprintf(['\n   Note: \n    *   \n\n'])