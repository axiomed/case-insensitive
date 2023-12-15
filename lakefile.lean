import Lake
open Lake DSL

package «CaseInsensitive» where
  -- add package configuration options here

lean_lib «CaseInsensitive» where
  -- add library configuration options here

lean_exe «tests» where
  root := `Tests
  supportInterpreter := true
