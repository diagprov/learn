module FFI where

import Foreign.C.Types
import Foreign.C.String

foreign import ccall "double_input" doubleInput :: CInt -> CInt
foreign import ccall unsafe "print_string" printString :: CString -> IO ()
