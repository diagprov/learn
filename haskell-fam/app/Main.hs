module Main where

-- http://learnyouahaskell.com/functors-applicative-functors-and-monoids

main :: IO ()
main = do

    putStrLn $ "Functors examples"
    -- type signature: f => (a -> b) -> f a -> f b
    let result = fmap (*2) [1..10]
    putStrLn $ show result
    reverseline <- fmap reverse getLine
    putStrLn $ "Your input reversed is " ++ reverseline

