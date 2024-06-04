/-- This structure represents case-insensitive strings. It stores the lowercase version of the
string along with a proof that it is indeed the lowercase representation of the original string. -/
structure String.CI where
  value: String
  prop: ∃ x: String, value = x.toLower
  deriving BEq, Hashable, DecidableEq

instance : Repr String.CI where
  reprPrec s := reprPrec s.value

instance : ToString String.CI where
  toString x := x.value

/-- Constructor for case-insensitive strings. -/
def String.CI.new (s: String) := String.CI.mk s.toLower ⟨s, rfl⟩

/-- Function to concatenate two case-insensitive strings. The result is also case-insensitive. -/
def String.CI.append (s1 s2: String.CI) : String.CI :=
  String.CI.new (s1.value ++ s2.value)

instance : HAppend String.CI String.CI String.CI where
  hAppend := String.CI.append

def String.CI.length (s: String.CI) : Nat :=
  s.value.length
