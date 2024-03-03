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
  pkgs.fish.shellInit = '' 
      export PRISMA_SCHEMA_ENGINE_BINARY="${pkgs.prisma-engines}/bin/schema-engine"
      export PRISMA_QUERY_ENGINE_BINARY="${pkgs.prisma-engines}/bin/query-engine"
      export PRISMA_QUERY_ENGINE_LIBRARY="${pkgs.prisma-engines}/lib/libquery_engine.node"
      export PRISMA_FMT_BINARY="${pkgs.prisma-engines}/bin/prisma-fmt"

  '';
  programs.home-manager.enable = true;
} 
