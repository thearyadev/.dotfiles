{ config, pkgs, ... }:

{
  home.file.".config/fish/".source = ../../legacy/fish;
}
