function dmHeuristicSearch()

// Define o número de vezes que o algoritmo irá gerar uma solução aleatória
// e resolver o quebra-cabeça para o cálculo da eficiência da heurística
ITERATIONS = 10;
 
// Número de vezes que o algoritmo encontrou a solução exata (fitness == 0)
hit = 0;
 
for i = 1 : ITERATIONS
    // Cria um estado inicial aleatório (primeira solução)
    solution = createInitialState();
 
    // Inicializa um conjunto com todas as soluções
    allSolutions = [];
 
    // Coloca essa solução no conjuto de soluções
    //allSolutions = cat(3, allSolutions, solution);
    allSolutions = mycat(allSolutions, solution);
 
    // Expande a solução
    [newSolutions, allSolutions] = expandSolution(solution, allSolutions);
 
    // Enquanto existem soluções para serem exploradas...
    while ~isempty(newSolutions)
 
        // Avalia as soluções geradas
        //[bestFitness, bestSolutions] = wrongPosition(newSolutions);
        [bestFitness, bestSolutions] = manhattanDistance(newSolutions);
        
        // Expande as melhores soluções
        [newSolutions, allSolutions] = expandSolution(bestSolutions, allSolutions);
                
        // Caso a solução seja encontrada, podemos parar o loop
        if (bestFitness == 0)
            break;
        end
    end
 
    // Imprime a melhor solução
    disp(bestSolutions);
    disp(bestFitness);
 
    if bestFitness == 0
        hit = hit + 1;
    end
end
 
e = (hit / ITERATIONS) * 100;
disp("Eficiência: "+string(e)+"%");

//disp("Result is " + string(x));
endfunction
