{ config, pkgs, ... }:

{
  home.username = "arya";
  home.homeDirectory = "/home/arya";
  home.stateVersion = "23.11";
  home.sessionVariables = { };
  imports = [
    ../../legacy/dotfiles.nix
    ./packages.nix
    ../../modules/hyprland/hyprland.nix
    ../../modules/waybar/waybar.nix
    ../../modules/kitty/kitty.nix
  ];

  programs.home-manager.enable = true;
}
