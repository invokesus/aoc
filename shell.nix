{ pkgs ? import <nixpkgs> {} }:

with pkgs;

stdenv.mkDerivation rec {
  name = "aoc-env";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    python36
    guile
    rustc
    ghc
    ];
}
