import CaseInsensitive.Data.CaseInsensitive
import «Tests».Framework

def caseInsensitiveTests : List Assertion := [
  Assertion.make "should be equal because strings have same content 1"
    true
    (CIString.create "foobar" == CIString.create "FOOBAR"),

  Assertion.make "should be equal because strings have same content 2"
    true
    (CIString.create "HELLO there" == CIString.create "hellO ThErE"),

  Assertion.make "shouldn't be equal because both string not matching"
    false
    (CIString.create "HELLO there" == CIString.create "GUTEN arben"),

  Assertion.make "shouldn't be equal because one string is empty"
    false
    (CIString.create "HELLO there" == CIString.create ""),

  Assertion.make "should convert CIString to String"
    "hello"
    (toString (CIString.create "hello"))
]
