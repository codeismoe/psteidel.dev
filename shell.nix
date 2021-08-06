{ pkgs ? import <nixpkgs> {} }:

let
  mypkg = pkgs.haskellPackages.callPackage ./default.nix {};
in
pkgs.mkShell {
  buildInputs = [ mypkg ];
}
