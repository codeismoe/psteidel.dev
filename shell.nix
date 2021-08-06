{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  packages = with pkgs; [
    (haskell.packages.ghc8104.ghcWithPackages (hs: with hs; [
      hakyll
    ]))
    cabal-install
  ];
}
