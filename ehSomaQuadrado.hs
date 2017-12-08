

ehSomaQuadrado :: Float -> Float -> Float -> [Char]
ehSomaQuadrado sqrtNum rt num 
      | (sqrtNum ** 2) + (rt ** 2) < num = ehSomaQuadrado sqrtNum (rt+1) num
      | (sqrtNum ** 2) + (rt ** 2) > num  && sqrtNum == (sqrt(num)-1) = "NO"
      | (sqrtNum ** 2) + (rt ** 2) == num = "YES"
      | otherwise = ehSomaQuadrado (sqrtNum-1) (rt+1) num
       
main = do 
    n <- getLine
    putStrLn(ehSomaQuadrado (sqrt (read n)) 0 (read n :: Float))