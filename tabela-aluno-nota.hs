tabela:: Int -> String
tabela n = cabecalho ++ imprimeALunos n ++ imprimeMedia n

cabecalho :: String
cabecalho = "Aluno      Nota\n"

imprimeALunos :: Int -> String
imprimeALunos 1 = imprimeALuno 1
imprimeALunos n = imprimeALunos(n-1) ++ imprimeALuno n 

imprimeALuno :: Int -> String
imprimeALuno n = show n ++ "        "++show(aluno n)++"\n"

imprimeMedia :: Int -> String
imprimeMedia n = "\n"++ "Média da Turma: "++ show(media n)

media :: Int -> Int
media n = div (soma n) n

soma :: Int -> Int
soma 1 = aluno 1
soma n = aluno n + soma(n-1)

aluno :: Int -> Int
aluno 1 = 7
aluno 2 = 10
aluno 3 = 9
aluno 4 = 6

