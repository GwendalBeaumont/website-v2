{ pkgs ? import <nixpkgs> {} }:

with pkgs;

mkShell {
  nativeBuildInputs = with pkgs.buildPackages; [
    libgcc
    gnumake
    vscode.fhs
  ];

  buildInputs = with pkgs; [
    ruby
    rubyPackages.jekyll
    bundler
  ];
}
