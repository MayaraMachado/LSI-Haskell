module Main where

mdc::Int->Int->Int
mdc x y | y == 0 = x 
        | otherwise = mdc y (mod x y)
        

mmc::Int->Int->Int
mmc x y | y == x = x 
        | otherwise = div (x * y) (mdc x y)
        
                
main = do
    x <- readLn
    y <- readLn
    print(mmc x y)
  