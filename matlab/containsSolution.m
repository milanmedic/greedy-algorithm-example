%Verifica se a solução a existe no espaço de soluções analisadas
function y = containsSolution(solution, nodes)
 
    %Inicialmente considera-se que a solução ainda não foi anaisada
    y = false;
    length = size(nodes);
    
    %Verifica no vetor de soluções se já existe uma solução igual
    if numel(length) == 3
        for i = 1 : length(3)
            if nodes(:,:,i) == solution
                y = true;
                break;
            end
        end
    end
end
