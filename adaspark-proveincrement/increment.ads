procedure Increment
  (X : in out Integer)
with
  Global  => null,
  Depends => (X => X),
  Pre     => X < Integer'Last,
  Post    => X = X'Old + 1;
