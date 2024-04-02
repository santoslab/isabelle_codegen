```
git clone https://github.com/santoslab/isabelle_codegen.git
sireum proyek assemble --uber -m org.sireum.hamr.codegen.jisabelle.Generate isabelle_codegen/
alias igen=$(pwd)/isabelle_codegen/out/isabelle_codegen/assemble/isabelle_codegen.jar.bat
igen --help
```

Example running igen on the isolette in hamr-examples

```
igen -m isolette <path-to-hamr-examples-repo>/isolette/hamr/slang
```
