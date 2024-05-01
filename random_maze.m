% created 4/25/24 

%%% SUMMARY: test script to try ap development in preparation for ratmaze
function maze = random_maze(x)
    %INPUT: x = side length
    %OUTPUT: random maze with side-length x

    maze_size = [x, x];
    start_pos = [1,1]; %where the user begins

    % generate the goal destination for the user
    goal_pos = maze_size;
    
    % 0 = path, 1 = wall
    maze = randi([0,1], maze_size);

    % start and end positions
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
