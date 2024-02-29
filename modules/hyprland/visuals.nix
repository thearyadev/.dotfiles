{
  general = {
    gaps_in = 5;
    gaps_out = 10;
    border_size = 2;
    "col.active_border" = "rgba(ebbcbaff)";
    "col.inactive_border" = "rgba(e0def4aa)";
    layout = "master";
  };

  decoration = {
    rounding = 5;
    blur = {
      size = 3;
      passes = 3;
      new_optimizations = "on";
    };
    drop_shadow = false;
  };
  animations = {
    enabled = true;
    bezier = [
      "ease_in_out, 0.5, 0, 0.5, 1"
      "ease_in, 0.5, 0, 1, 1"
      "ease_out, 0, 0, 0.5, 1"
    ];
    animation = [
      "global, 1, 3, ease_in_out"
      "windowsIn, 1, 3, ease_out"
      "windowsOut, 1, 3, ease_in"

    ];
  };
  misc = {
    disable_hyprland_logo = true;
    disable_splash_rendering = true;
  };
  master = {
    new_is_master = false;
    mfact = 0.5;
  };

  windowrulev2 = [ 
    "opacity 0.85 0.85, class:^(kitty)$"

    "float,$scratchpad"
    "$scratchpadsize,$scratchpad"
    "workspace special silent,$scratchpad"
    "center,$scratchpad"
  ];
}
