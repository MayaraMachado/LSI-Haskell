-- Mayara Machado e Igor Gonçalves

fib:: Int -> Int -> Int -> Int -> Int
fib x y n c | x > n = -1
            | x == n = c
            | otherwise = fib y (y+x) n (c+1)

main = do
    n <- readLn
    print(fib 0 1 n 0)