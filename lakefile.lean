import Lake
open Lake DSL

package «WebToLean» where
  -- add package configuration options here

lean_lib «WebToLean» where
  -- add library configuration options here

@[default_target]
lean_exe «webtolean» where
  root := `Main

require checkdecls from git "https://github.com/PatrickMassot/checkdecls.git"

meta if get_config? env = some "dev" then
require «doc-gen4» from git
  "https://github.com/leanprover/doc-gen4" @ "main"