{ config, pkgs, ... }:

{
  home.file.".config/fish/".source = ./fish;
  home.file.".config/neofetch/".source = ./neofetch;
  home.file.".config/rofi/".source = ./rofi;
  home.file.".config/dunst/".source = ./dunst;
  home.file.".config/hypr/hyprpaper.conf".source = ./hyprpaper/hyprpaper.conf;
  home.file.".config/hypr/pyprland.toml".source = ./pyprland/pyprland.toml;
  home.file.".config/wallpapers/".source = ../wallpapers;
}
