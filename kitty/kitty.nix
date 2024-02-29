{pkgs, lib, ...}: 
{
  programs.kitty = {
    enable = true;
    font = {
      name = "FiraCode Nerd Font";
      size = 14;
    };
    shellIntegration.enableFishIntegration = true;
    extraConfig = ''
    bold_font        auto
    italic_font      auto
    bold_italic_font auto
    # - Use additional nerd symbols
    # See https://github.com/be5invis/Iosevka/issues/248
    # See https://github.com/ryanoasis/nerd-fonts/wiki/Glyph-Sets-and-Code-Points

    # Seti-UI + Custom
    symbol_map U+E5FA-U+E6AC FiraCode Nerd Font

    # Devicons
    symbol_map U+E700-U+E7C5 FiraCode Nerd Font

    # Font Awesome
    symbol_map U+F000-U+F2E0 FiraCode Nerd Font

    # Font Awesome Extension
    symbol_map U+E200-U+E2A9 FiraCode Nerd Font

    # Material Design Icons
    symbol_map U+F0001-U+F1AF0 FiraCode Nerd Font

    # Weather
    symbol_map U+E300-U+E3E3 FiraCode Nerd Font

    # Octicons
    symbol_map U+F400-U+F532,U+2665,U+26A1 FiraCode Nerd Font

    # Powerline Symbols
    symbol_map U+E0A0-U+E0A2,U+E0B0-U+E0B3 FiraCode Nerd Font

    # Powerline Extra Symbols
    symbol_map U+E0A3,U+E0B4-U+E0C8,U+E0CA,U+E0CC-U+E0D4 FiraCode Nerd Font

    # IEC Power Symbols
    symbol_map U+23FB-U+23FE,U+2B58 FiraCode Nerd Font

    # Font Logos
    symbol_map U+F300-U+F32F FiraCode Nerd Font

    # Pomicons
    symbol_map U+E000-U+E00A FiraCode Nerd Font

    # Codicons
    symbol_map U+EA60-U+EBEB FiraCode Nerd Font

    # Additional sets
    symbol_map U+E276C-U+E2771 FiraCode Nerd Font # Heavy Angle Brackets
    symbol_map U+2500-U+259F FiraCode Nerd Font # Box Drawing

    # Some symbols not covered by FiraCode Nerd Font
    # nonicons contains icons in the range: U+F101-U+F27D
    # U+F167 is HTML logo, but YouTube logo in FiraCode Nerd Font
    symbol_map U+F102,U+F116-U+F118,U+F12F,U+F13E,U+F1AF,U+F1BF,U+F1CF,U+F1FF,U+F20F,U+F21F-U+F220,U+F22E-U+F22F,U+F23F,U+F24F,U+F25F nonicons
    ## name: Rosé Pine
    ## author: mvllow
    ## license: MIT
    ## upstream: https://github.com/rose-pine/kitty/blob/main/dist/rose-pine.conf
    ## blurb: All natural pine, faux fur and a bit of soho vibes for the classy minimalist

    foreground               #e0def4
    background               #191724
    selection_foreground     #e0def4
    selection_background     #403d52

    cursor                   #524f67
    cursor_text_color        #e0def4

    url_color                #c4a7e7

    active_tab_foreground    #e0def4
    active_tab_background    #26233a
    inactive_tab_foreground  #6e6a86
    inactive_tab_background  #191724

    active_border_color      #31748f
    inactive_border_color    #403d52

    # black
    color0   #26233a
    color8   #6e6a86

    # red
    color1   #eb6f92
    color9   #eb6f92

    # green
    color2   #31748f
    color10  #31748f

    # yellow
    color3   #f6c177
    color11  #f6c177

    # blue
    color4   #9ccfd8
    color12  #9ccfd8

    # magenta
    color5   #c4a7e7
    color13  #c4a7e7

    # cyan
    color6   #ebbcba
    color14  #ebbcba

    # white
    color7   #e0def4
    color15  #e0def4
    confirm_os_window_close -1
    
    shell fish
    '';
  };
}
