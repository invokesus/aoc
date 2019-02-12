{ pkgs ? import <nixpkgs> {} }:

with pkgs;

mkShell {
  name = "aoc-env";
  buildInputs = [
    python36
    guile
    ghc
    haskellPackages.attoparsec
    ];
}
