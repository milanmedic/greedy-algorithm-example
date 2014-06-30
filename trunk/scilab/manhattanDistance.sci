// Avalia um conjunto de soluções utilizando a Manhattan Distance e retorna
// as melhores soluções encontradas
function [bestFitness, bestSolutions] = manhattanDistance(solutions)
    bestFitness = 1000;	
    for i = 1 : size(solutions, 3)
        solution = solutions(:, :, i);
        fitness = 0;
        fitness = fitness + getFitness(1, 1, 2, solution);
        fitness = fitness + getFitness(2, 1, 3, solution);
        fitness = fitness + getFitness(3, 2, 1, solution);
        fitness = fitness + getFitness(4, 2, 2, solution);
        fitness = fitness + getFitness(5, 2, 3, solution);
        fitness = fitness + getFitness(6, 3, 1, solution);
        fitness = fitness + getFitness(7, 3, 2, solution);
        fitness = fitness + getFitness(8, 3, 3, solution);
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
