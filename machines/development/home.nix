{ config, pkgs, ... }:

{
  home.username = "arya";
  home.homeDirectory = "/home/arya";

  home.stateVersion = "23.11"; # Please read the comment before changing.
  home.file = {};

  home.sessionVariables = {};
  imports = [
    ./packages.nix
    ./dotfiles.nix
  ]; 
  programs.home-manager.enable = true;
}
