{ config, pkgs, ... }: {
  home.packages = [
    pkgs.playerctl
    pkgs.nixfmt
    pkgs.htop
    pkgs.cinnamon.nemo

    (pkgs.writeShellScriptBin "my-hello2" ''
      echo "Hello, ${config.home.username}!"
    '')
  ];
}
