{ config, pkgs, ... }:

{
  home.file.".config/fish/".source = ../../legacy/fish;
  home.file.".config/neofetch/".source = ../../legacy/neofetch;
  home.file.".config/rofi/".source = ../../legacy/rofi;
  home.file.".config/dunst/".source = ../../legacy/dunst;
  home.file.".config/kitty/kitty.conf".source = ../../legacy/kitty/kitty.conf;
  home.file.".config/waybar".source = ../../legacy/waybar;
  home.file.".config/hypr/hyprpaper.conf".source = ../../legacy/hyprpaper/hyprpaper.conf;
  home.file.".config/hypr/hyprland.conf".source = ../../legacy/hyprland/hyprland.conf;
  home.file.".config/hypr/pyprland.toml".source = ../../legacy/pyprland/pyprland.toml;
  home.file.".config/wallpapers/".source = ../../wallpapers;
  home.file.".config/nvim/".source = ../../legacy/nvim;
}
