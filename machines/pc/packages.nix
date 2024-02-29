{ config, pkgs, ... }: {
  home.packages = [
    pkgs.playerctl
    pkgs.nixfmt
    pkgs.htop
    pkgs.xfce.thunar

    (pkgs.writeShellScriptBin "build-nixos" ''
      nixos-rebuild switch --flake ./#default --impure
    '')

    (pkgs.writeShellScriptBin "build-home" ''
      home-manager switch --flake . --impure
    '')
  ];
}
