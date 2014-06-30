// Avalia um conjunto de soluções utilizando o método das posições erradas e retorna as melhores soluções encontradas
// Autor: edielson@inatel.br
function [bestFitness, bestSolutions] = wrongPosition(solutions)
    //MATLAB bestFitness = inf;
    bestFitness = 8+1;
    for i = 1 : size(solutions, 3)
        solution = solutions(:, :, i);
        fitness = 0;
        if solution(1, 2) ~= 1
            fitness = fitness + 1;
        end
        if solution(1, 3) ~= 2
            fitness = fitness + 1;
        end
        if solution(2, 1) ~= 3
            fitness = fitness + 1;
        end
        if solution(2, 2) ~= 4
            fitness = fitness + 1;
        end
        if solution(2, 3) ~= 5
            fitness = fitness + 1;
        end
        if solution(3, 1) ~= 6
            fitness = fitness + 1;
        end
        if solution(3, 2) ~= 7
            fitness = fitness + 1;
        end
        if solution(3, 3) ~= 8
            fitness = fitness + 1;
        end
        if fitness < bestFitness
            bestFitness = fitness;
            bestSolutions = solution;
        else
            if fitness == bestFitness
                //bestSolutions = cat(3, bestSolutions, solution); 
                bestSolutions = mycat(bestSolutions, solution); 
            end   
        end
    end
endfunction
