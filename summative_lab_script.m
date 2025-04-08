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
%   initialize Width and Height for Dialog boxes
Width = 500;
Height = 100;
% Create a margin for the top and right edge of dialog boxes
Right_margin = 50;
Top_margin = 50;
%   Initialize Left and Bottem edges of dialog boxes as the system screen 
% height - Width/Width of box(Leaving it like this will place box perfectly in top right/left edge)
% - 100 (to account for height of window bar of db) for right edge 
% or - right margin to account for set margin Width when calculating left Edge 
Left_Edge = screen_width - Width - Right_margin; % intialize Left Edge variable for Dialog box
Bottem_Edge = screen_height - Height - 100; % intialize Bottem Edge variable for Dialog box
% create array with DB position variables
Original_Pos = [Width, Height, Left_Edge, Bottem_Edge];

% %   Define function that updates Dialog boxes to update Left_Edge and Bottem_edge to account for already placed dialog boxes.
% function new_pos = update_db_position(original_pos)
%     % % Updates position of dialog boxes
%     % % Args:
%         % % (int) Width: Width of dialog box
%         % % (int) height: height of dialog box
%         % % (int) left_edge: left_edge of dialog box position
%         % % (int) bottem_edge: bottem_edge of dialog box position
%     % % Returns:
%         % % (int) Width: Width of dialog box
%         % % (int) height: height of dialog box
%         % % (int) left_edge: left_edge of dialog box position
%         % % (int) bottem_edge: bottem_edge of dialog box position
% 
%     % set bottem_edge as iteself -height - 100 (size of taskbar) to move new DB down by this ammount
%     % bottem_edge = bottem_edge - height - 100; % intialize Bottem Edge variable for Dialog box
% 
%     new_pos = original_pos; % copy original pos values to new_pos array
%     new_pos(3) = original_pos(3) - orignial_pos[1] - 100;
% end

function pos = update_dialog_position(reset)
    persistent current_pos Left_Edge Bottem_Edge;
    
%   Set dimensions and location for dialog boxes, 
    %   position is on a scale from [0-1000] for screen height, and [0-1500] for screen width.
    %   Set Screen dimensions for proportional figure implementation
    screen_width = 1500;
    screen_height= 1000;
    %   initialize Width and Height for Dialog boxes
    Width = 500;
    Height = 100;
    % Create a margin for the top and right edge of dialog boxes
    Right_margin = 50;
    Top_margin = 30;
    
    % for safety, check to see if correct number of arguments has been
    % passed and that the reset argument is true, this provides a manual
    % user control over wether the position should be reset or not.
    if nargin > 0 && reset % nargin > 0 checks if (# if arguments) > (0) to see if user passed correct # of args

       
        % Set left edge as the screen_width - Width - Right_margin to place
        % perfectly in place
        Left_Edge = screen_width - Width - Right_margin;
        Bottem_Edge = screen_height - Height - Top_margin - 50;
        current_pos = [Left_Edge, Bottem_Edge, Width, Height];
    else
        % Set task bar size
        Taskbar_size = 30;
        % Update position by shifting down, subtracts bottem edge by the
        % height of the bar and the size of the taskbar.
        current_pos(2) = current_pos(2) - current_pos(4) - Taskbar_size;
        
        % Displays position of bar in command window
        disp(['Position: ', mat2str(current_pos)]);
    
    end
    % check if taskbar is being printed underneath screen
    if current_pos(2) <= 20 
        current_pos(1) = Left_Edge - Width;
        current_pos(2) = screen_height - Height - Top_margin - 50;
    end
    if current_pos(1) <= 0 || current_pos(2) <= 0
        error('Invalid dialog size: Left_Edge and Bottem_Edge must be positive.');
    end
    % Ensure width and height are positive
    if current_pos(3) <= 0 || current_pos(4) <= 0
        error('Invalid dialog size: Width and height must be positive.');
    end
    pos = current_pos;


end

%   construct dialog boxes to prompt user inputs to enter component values for circuit analysis 
% use update_dialog_function  with(true) to intialize tracker tracker




% prompt user to enter each of the componenet values with dialog boxes
dlg_pos = update_dialog_position(true);
V1 = dialog('Position', dlg_pos, 'Name', 'Enter value for V1'); %prompt user to enter componenet value for V1
txt = uicontrol('Parent',V1,...
           'Style','text',...
           'Position',[0,0,200,50],...
           'String','Enter Component Value');
       

V2 = dialog('Position', update_dialog_position(), 'Name', 'Enter value for V2'); %prompt user to enter componenet value for V2
R1 = dialog('Position', update_dialog_position(), 'Name', 'Enter value for R1'); %prompt user to enter componenet value for R1
R2 = dialog('Position', update_dialog_position(), 'Name', 'Enter value for R2'); %prompt user to enter componenet value for R2
R3 = dialog('Position', update_dialog_position(), 'Name', 'Enter value for R3'); %prompt user to enter componenet value for R3
R4 = dialog('Position', update_dialog_position(), 'Name', 'Enter value for R4'); %prompt user to enter componenet value for R4
R5 = dialog('Position', update_dialog_position(), 'Name', 'Enter value for R5'); %prompt user to enter componenet value for R5