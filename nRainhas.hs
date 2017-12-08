type Posicao = (Int,Int)
type Tabuleiro = [Posicao]
--Verificação se duas rainhas se atacam
verificaRainha :: Posicao -> Posicao -> Bool 
verificaRainha (x1,y1) (x2,y2) = (x1 == x2) ||
                                 (y1 == y2) || 
                                 (x1+y1 == x2+y2) || 
                                 (x1-y1 == x2-y2)
--Verifica se a nova rainha atacará alguma já inserida no tabuleiro
verificaTabuleiro :: Tabuleiro->Posicao->Bool
verificaTabuleiro [] posicao = True
verificaTabuleiro (x:y) posicao = not(verificaRainha x posicao) && 
                                   verificaTabuleiro y posicao 
--Posicionamento das rainhas
rainhas :: Int->[Tabuleiro]
rainhas n = rainha n 
    where 
        rainha 0 = [] 
        rainha 1 = [[(1,xs)]|xs<-[1..n]]
        rainha x = [(x,y):k | y <- [1..n], k <- rainha (x-1), verificaTabuleiro k (x,y)] 



solucao :: [Posicao] -> [Int]
solucao ((l,c):tl) = c : solucao tl 
solucao _ = []



