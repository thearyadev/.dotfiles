{ config, pkgs, ... }:

{
  home.file.".config/fish/".source = ../../legacy/fish;
  home.file.".config/nvim/".source = ../../legacy/nvim;
}
