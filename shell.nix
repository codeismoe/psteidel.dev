{ pkgs ? import <nixpkgs> {} }:
let
  mypkg = import ./default.nix {};
in
pkgs.mkShell {
  buildInputs = [ pkgs.haskell-language-server ];
  inputsFrom = [ mypkg ];
}
