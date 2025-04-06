% --- Task B2: --- 
%   Objective: Develop A Matlab script to use Mesh analysis and Cramers Rule
%to Solve for the specified Circuit mesh values  

% - Display Circuit -

%   Upload png to left of dialog boxes to provide visual guide for users
% when entering componenet values in dialog boxes

% - Display Dialog Boxes -

%   Set dimensions and location for dialog boxes, 
%   position is on a scale from [0-1000] for screen height, and [0-1500] for screen width.
%   Set Screen dimensions for proportional figure implementation
screen_width = 1500;
screen_height= 1000;
%   initialize Length and Height for Dialog boxes
Length = 500;
Height = 100;
% Create a margin for the top and right edge of dialog boxes
Right_margin = 50;
Top_margin = 50;
%   Initialize Left and Bottem edges of dialog boxes as the system screen 
% height - Length/Width of box(Leaving it like this will place box perfectly in top right/left edge)
% - 100 (to account for height of window bar of db) for right edge 
% or - right margin to account for set margin length when calculating left Edge 
Left_Edge = screen_width - Length - Right_margin; % intialize Left Edge variable for Dialog box
Bottem_Edge = screen_height - Height - 100; % intialize Bottem Edge variable for Dialog box
% create array with DB position variables
Original_Pos = [Length, Height, Left_Edge, Bottem_Edge];

%   Define function that updates Dialog boxes to update Left_Edge and Bottem_edge to account for already placed dialog boxes.
function new_pos = update_db_position(original_pos)
    % % Updates position of dialog boxes
    % % Args:
        % % (int) length: length of dialog box
        % % (int) height: height of dialog box
        % % (int) left_edge: left_edge of dialog box position
        % % (int) bottem_edge: bottem_edge of dialog box position
    % % Returns:
        % % (int) length: length of dialog box
        % % (int) height: height of dialog box
        % % (int) left_edge: left_edge of dialog box position
        % % (int) bottem_edge: bottem_edge of dialog box position
        
    % set bottem_edge as iteself -height - 100 (size of taskbar) to move new DB down by this ammount
    % bottem_edge = bottem_edge - height - 100; % intialize Bottem Edge variable for Dialog box
    
    new_pos = original_pos; % copy original pos values to new_pos array
    new_pos(3) = original_pos(3) - orignial_pos[1] - 100;
end

%   construct dialog boxes to prompt user inputs to enter component values for circuit analysis 
V1 = dialog(Position = Original_Position, name = 'value for V1 '); % obtains V1 value from dialog box input 
% Set position as same as V1 but 
%array = update_db_position(Left_Edge,Bottem_Edge,Length,Height);
%disp(array);
%fprintf(update_db_position(Left_Edge,Bottem_Edge,Length,Height));
%V2 = dialog(Position = [update_db_position(Left_Edge,Bottem_Edge,Length,Height)], name = 'value for V2 '); % obtains V2 value from dialog box input 
New_Pos = update_db_position(Original_Pos);
V2 = dialog(Position = [update_db_position(Original_Pos)], name = 'value for V2 '); % obtains V2 value from dialog box input 
New_Pos = update_db_position(New_Pos);
% R1 = dialog('value for R1 = ', );
% R2 = dialog('value for R2 = ', );
% R3 = dialog('value for R3 = ', );
% R4 = dialog('value for R4 = ', );
% R5 = dialog('value for R5 = ', );
