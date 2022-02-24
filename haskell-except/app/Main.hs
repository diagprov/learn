{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}


module Main where

import System.IO
import Control.Exception
import Data.Typeable
import GHC.Show

-- boilerplate, we'll get to this in a bit
data MyException = MyException
  deriving (Show, Typeable)
instance Exception MyException

main :: IO ()
main = do
  putStrLn "This will be called"
  throwIO MyException
  putStrLn "This will never be called"


