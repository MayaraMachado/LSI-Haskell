-- Mayara e Igor
module Main where

lerValor = do
    n <- getLine         
    return (read n :: Double)
    
      
ler:: Double -> IO [Double]
ler 0 = return []
ler n = do 
        num <- lerValor
        l <- ler (n - 1)
        return (num:l)

histograma:: Double -> Double -> Double -> [Double] -> [Int]
histograma nclasses lmax lmin classes = [ length [y | y <- classes, (y >= fst x) && (y < snd x)] | x <- tlim]
  where
        k =  (lmax-lmin)/nclasses
        lim = [ lmin + (k * (x + 0.0)) | x <- [0..nclasses-1]]++[lmax]
        tlim = gerarTuplas lim

gerarTuplas:: [Double] -> [(Double,Double)]
gerarTuplas xs = zip (init xs) (tail xs)


main = do
  nclasses <- lerValor
  lmin <- lerValor
  lmax <- lerValor  
  ncasos <- lerValor
  classes <- ler ncasos    
  print (histograma nclasses lmax lmin classes)