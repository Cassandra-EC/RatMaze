% created 4/25/24 

%%% SUMMARY: test script to try ap development in preparation for ratmaze
function maze = random_maze()
difficulty = select_difficulty();

if difficulty==easy
    maze_size = [10, 10];

elseif difficulty==intermediate     % 'light_work'
    maze_size = [20,20];

elseif difficulty==hard             % 'break a sweat'
    maze_size = [40,40];
end

% create maze with random values
% FUTURE EDIT: need to have a proper distribution + have the maze be
% solvable
maze = randi([0,1], maze_size);


% choose start and end positions
start_pos = [1,1];
goal_pos = maze_size;   % adjustable


% start and end positions;  WHAT IS THIS DOING?????
maze(start_pos(1), start_pos(2)) = 0;
maze(goal_pos(1), goal_pos(2)) = 0;


% show maze
figure;
imagesc(maze);
colormap(gray);
axis equal;
axis off;
hold on;


% mark start & end
plot(start_pos(2), start_pos(1), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
plot(goal_pos(2), goal_pos(1), 'go', 'MarkerSize', 10, 'MarkerFaceColor', 'g');

% titles, labels
title('Random Maze [test]');
xlabel('columns');
ylabel('rows');


end
