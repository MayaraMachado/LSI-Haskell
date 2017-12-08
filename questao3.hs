-- Mayara Machado e Igor Gonçalves

fib:: Int -> Int -> Int -> Int
fib x y n | y > n = y
          | y == n = x+y
          | otherwise = fib y (y+x) n

main = do
    n <- readLn
    print(fib 0 1 n)