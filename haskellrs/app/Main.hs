import FFI
import Foreign.C.String (newCString)

main :: IO ()
main = do
  putStrLn $ show $ doubleInput 3 --This will print 6
  -- Technically newCString doesn't need the \0 but I found that
  -- Rust was eating up the last character regardless of what it was
  -- so to make sure it works I just null terminated it to get the right
  -- output.
  str <- newCString "Hello World\0"
  printString str
