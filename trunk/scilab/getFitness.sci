// Retorna quantos passos são necessários para se chegar da posição atual
// até a posição desejada (realRow e realCol)manhattan
function y = getFitness(value, realRow, realCol, solution)
    [row, col] = find(solution == value);
    row = row(1);
    col = col(1);
    y = abs(row - realRow) + abs(col - realCol);
endfunction
