{ config, pkgs, ... }:

{
  home.username = "arya";
  home.homeDirectory = "/home/arya";
  home.stateVersion = "23.11";
  home.sessionVariables = { };
  imports = [
    ./dotfiles.nix
    ./packages.nix
  ];

  programs.home-manager.enable = true;
}
