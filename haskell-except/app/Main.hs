{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}


module Main where

import RIO

-- boilerplate, we'll get to this in a bit
data MyException = MyException
  deriving (Show, Typeable)
instance Exception MyException

main :: IO ()
main = runSimpleApp $ do
  logInfo "This will be called"
  throwIO MyException
  logInfo "This will never be called"


