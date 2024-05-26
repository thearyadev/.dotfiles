{ config, pkgs, ... }:
let
  configPath = "~/.dotfiles/machines/pc/";
in 

{
  home.packages = [
    pkgs.neovim
    pkgs.fish
    pkgs.neofetch
    pkgs.dunst
    pkgs.waybar
    pkgs.hyprpaper
    pkgs.slurp
    pkgs.wl-clipboard
    pkgs.brave
    pkgs.fira-code-nerdfont
    pkgs.htop
    pkgs.foot
    pkgs.wayshot
    pkgs.imagemagick
    pkgs.dfu-programmer
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
