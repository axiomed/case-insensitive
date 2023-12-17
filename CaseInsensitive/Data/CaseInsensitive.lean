open Lean

structure CIString where
  private hashValue : Int
  value : String

def calculateHash (s : String) : Int :=
  s.foldl (λ h c => h * 31 + (c.toLower.toNat)) 17

instance : BEq CIString where
  beq s₁ s₂ := s₁.hashValue == s₂.hashValue

def CIString.create (value : String) : CIString :=
  { hashValue := calculateHash value, value := value }
