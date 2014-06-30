function heuristicSearch()

    % Cria um estado inicial aleatório (primeira solução)
    solution = createInitialState();
 
    % Inicializa um conjunto com todas as soluções
    allSolutions = [];
 
    % Coloca essa solução no conjuto de soluções
    allSolutions = cat(3, allSolutions, solution);
 
    % Expande a solução
    [newSolutions, allSolutions] = expandSolution(solution, allSolutions);
 
    % Enquanto existem soluções para serem exploradas...
    while ~isempty(newSolutions)
 
        % Avalia as soluções geradas
        [bestFitness, bestSolutions] = wrongPosition(newSolutions);
 
        % Expande as melhores soluções
        [newSolutions, allSolutions] = expandSolution(bestSolutions, allSolutions);
 
        % Caso a solução seja encontrada, podemos parar o loop
        if (bestFitness == 0)
            break;
        end
    end
 
    % Imprime a melhor solução
    disp(bestSolutions);
    disp(bestFitness);
end