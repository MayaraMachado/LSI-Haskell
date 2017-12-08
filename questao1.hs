-- Mayara Machado e Igor Gonçalves 

ultimoElemento:: Num a => [a] -> a
ultimoElemento [n] = n 
ultimoElemento (x:xs) = ultimoElemento xs 


main = do
    x <- readLn :: IO [Int]
    print(ultimoElemento x)