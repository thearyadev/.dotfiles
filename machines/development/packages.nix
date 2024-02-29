{ config, pkgs, ... }: {
  home.packages = [
    pkgs.nixfmt
    pkgs.htop
    pkgs.fish
    pkgs.neovim
    pkgs.gcc
    pkgs.poetry
    pkgs.nodejs_21
    (pkgs.writeShellScriptBin "build-nixos" ''
      nixos-rebuild switch --flake ./#default --impure
    '')

    (pkgs.writeShellScriptBin "build-home" ''
      home-manager switch --flake . --impure
    '')
  ];
}
