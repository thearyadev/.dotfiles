{ pkgs, lib, ... }: {
  programs.waybar = {
    enable = true;
    settings = import ./config.nix;
    style = import ./style.nix;
  };
}
