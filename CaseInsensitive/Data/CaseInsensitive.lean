structure CIString where
  private mk ::
  private hashValue : Int
  value : String

def calculateHash (s : String) : Int :=
  s.foldl (λ h c => h * 31 + (c.toLower.toNat)) 17

instance : BEq CIString where
  beq s₁ s₂ := s₁.hashValue == s₂.hashValue

instance : ToString CIString where
  toString s := s.value

instance : Repr CIString where
  reprPrec s _ := repr s.value

def CIString.create (value : String) : CIString :=
  { hashValue := calculateHash value, value := value }
