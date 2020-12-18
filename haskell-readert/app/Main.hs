{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
import Control.Concurrent.Async.Lifted.Safe
import Control.Monad.Reader
import qualified Control.Monad.State.Strict as State
import Control.Concurrent.STM
import Say
import Test.Hspec

data Env = Env
  { envLog :: !(String -> IO ())
  , envBalance :: !(TVar Int)
  }

class HasLog a where
  getLog :: a -> (String -> IO ())
instance HasLog (String -> IO ()) where
  getLog = id
instance HasLog Env where
  getLog = envLog

class HasBalance a where
  getBalance :: a -> TVar Int
instance HasBalance (TVar Int) where
  getBalance = id
instance HasBalance Env where
  getBalance = envBalance

class Monad m => MonadBalance m where
  modifyBalance :: (Int -> Int) -> m ()
instance (HasBalance env, MonadIO m) => MonadBalance (ReaderT env m) where
  modifyBalance f = do
    env <- ask
    liftIO $ atomically $ modifyTVar' (getBalance env) f
instance Monad m => MonadBalance (State.StateT Int m) where
  modifyBalance = State.modify

modify :: MonadBalance m => (Int -> Int) -> m ()
modify f = do
  -- Now I know there's no way I'm performing IO here
  modifyBalance f

logSomething :: (MonadReader env m, HasLog env, MonadIO m)
             => String
             -> m ()
logSomething msg = do
  env <- ask
  liftIO $ getLog env msg

main :: IO ()
main = hspec $ do
  describe "modify" $ do
    it "works, IO" $ do
      var <- newTVarIO (1 :: Int)
      runReaderT (modify (+ 2)) var
      res <- readTVarIO var
      res `shouldBe` 3
  it "works, pure" $ do
      let res = State.execState (modify (+ 2)) (1 :: Int)
      res `shouldBe` 3
  describe "logSomething" $ do
    it "works" $ do
      var <- newTVarIO ""
      let logFunc msg = atomically $ modifyTVar var (++ msg)
          msg1 = "Hello "
          msg2 = "World\n"
      runReaderT (logSomething msg1 >> logSomething msg2) logFunc
      res <- readTVarIO var
      res `shouldBe` (msg1 ++ msg2)
