module Main where

mdc::Int->Int->Int
mdc x y | y == 0 = x 
        | otherwise = mdc y (mod x y)  
                
main = do
    x <- readLn
    y <- readLn
    print(mdc x y)
  