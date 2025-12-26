def nTimes (action : IO Unit) : Nat → IO Unit
  | 0 => pure ()
  | n + 1 => do
    action
    nTimes action n

def main : IO Unit := do

    nTimes (IO.println "Hello") 5
