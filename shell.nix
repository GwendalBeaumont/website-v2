{ pkgs ? import <nixpkgs> {} }:

with pkgs;

mkShell {
  nativeBuildInputs = with pkgs.buildPackages; [
    libgcc
    gnumake
  ];

  buildInputs = with pkgs; [
    ruby
    rubyPackages.jekyll
    bundler
  ];
}
