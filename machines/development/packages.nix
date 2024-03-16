{ config, pkgs, ... }:
let
  configPath = "~/.dotfiles/machines/development/";
in 
{
  home.packages = [
    pkgs.nixfmt
    pkgs.htop
    pkgs.fish
    pkgs.neovim
    pkgs.gcc
    pkgs.poetry
    pkgs.nodejs_21
    pkgs.ffmpeg
    pkgs.bun
    pkgs.prisma-engines
    pkgs.go_1_20
    pkgs.ripgrep
    pkgs.bfg-repo-cleaner
    pkgs.unzip
    pkgs.thefuck
    pkgs.stylua
    pkgs.lua-language-server
    (pkgs.writeShellScriptBin "nixos-flake-switch" ''
      sudo nixos-rebuild switch --flake ./#default --impure
    '')

    (pkgs.writeShellScriptBin "home-manager-flake-switch" ''
      home-manager switch --flake . --impure
    '')

    (pkgs.writeShellScriptBin "home-build" ''
      cd ${configPath} && home-manager-flake-switch
    '')
    (pkgs.writeShellScriptBin "nixos-build" ''
      cd ${configPath} && nixos-flake-switch 
    '')

    (pkgs.writeShellScriptBin "conf" ''
      cd ${configPath} && nvim
    '')


  ];
}
