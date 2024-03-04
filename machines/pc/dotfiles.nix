{ config, pkgs, ... }:

{
  home.file.".config/fish/".source = ../../legacy/fish;
  home.file.".config/neofetch/".source = ../../legacy/neofetch;
  home.file.".config/rofi/".source = ../../legacy/rofi;
  home.file.".config/dunst/".source = ../../legacy/dunst;
  home.file.".config/hypr/hyprpaper.conf".source = ../../legacy/hyprpaper/hyprpaper.conf;
  home.file.".config/hypr/pyprland.toml".source = ../../legacy/pyprland/pyprland.toml;
  home.file.".config/wallpapers/".source = ../../wallpapers;
  home.file.".config/nvim/".source = ../../legacy/nvim;
}
