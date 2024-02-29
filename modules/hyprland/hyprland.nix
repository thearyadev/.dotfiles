{ pkgs, lib, ... }:
let
  visuals = import ./visuals.nix;
  binds = import ./binds.nix;
in {
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$super" = "SUPER";
      "$scratchpadsize" = "size 100% 100%";
      "$scratchpad" = "class:^(dropterm)$";
      inherit (visuals) general decoration misc animations master windowrulev2;
      inherit (binds) bind bindm;

      monitor = import ./monitors.nix;
      workspace = import ./workspace_mapping.nix;
      env = import ./environ.nix;
      exec-once = import ./exec.nix;
      input = import ./input.nix;
    };
  };
}
