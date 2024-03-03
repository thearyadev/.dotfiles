{ config, pkgs, ... }:

{
  home.username = "arya";
  home.homeDirectory = "/home/arya";

  home.stateVersion = "23.11"; # Please read the comment before changing.
  home.file = {};

  home.sessionVariables = {
    PRISMA_QUERY_ENGINE_BINARY="/home/arya/.nix-profile/bin/query-engine";
    PRISMA_SCHEMA_ENGINE_BINARY="/home/arya/.nix-profile/bin/schema-engine";
  };
  imports = [
    ./packages.nix
    ./dotfiles.nix
  ]; 
  programs.home-manager.enable = true;
} 
