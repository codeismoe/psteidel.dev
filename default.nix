{  pkgs ? import <nixpkgs> {} }:
let
  myPackage = pkgs.haskellPackages.callCabal2nix "psteidel-dev" ./. {};
  withTools = myPackage.overrideDerivation (old: {
    nativeBuildInputs = old.nativeBuildInputs ++ [ pkgs.lessc pkgs.netlify-cli];
  });
in withTools
