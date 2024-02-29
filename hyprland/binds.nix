{
  bind = [
    # Static Keybinds
    "$super, Return, exec, kitty"
    "$super, Space, exec, rofi -show drun -theme \${HOME}/.config/rofi/launchers/type-7/style-1.rasi"
    ", Insert, exec, grim -g \"$(slurp)\" - | wl-copy"
    "$super, Q, killactive"
    "$super, S, togglefloating"
    "$super, F, fullscreen"
    "$super, M, exit"
    # Window Keybinds
    "$super, H, movefocus, l"
    "$super, L, movefocus, r"
    "$super, K, movefocus, u"
    "$super, J, movefocus, d"
    "$super, 1, workspace, 1"
    "$super, 2, workspace, 2"
    "$super, 3, workspace, 3"
    "$super, 4, workspace, 4"
    "$super, 5, workspace, 5"
    "$super, 6, workspace, 6"
    "$super, 7, workspace, 7"
    "$super, 8, workspace, 8"
    "$super, 9, workspace, 9"
    "$super, 0, workspace, 10"
    "$super SHIFT, 1, movetoworkspace, 1"
    "$super SHIFT, 2, movetoworkspace, 2"
    "$super SHIFT, 3, movetoworkspace, 3"
    "$super SHIFT, 4, movetoworkspace, 4"
    "$super SHIFT, 5, movetoworkspace, 5"
    "$super SHIFT, 6, movetoworkspace, 6"
    "$super SHIFT, 7, movetoworkspace, 7"
    "$super SHIFT, 8, movetoworkspace, 8"
    "$super SHIFT, 9, movetoworkspace, 9"
    "$super SHIFT, 0, movetoworkspace, 10"
    "$super, mouse_down, workspace, e+1"
    "$super, mouse_up, workspace, e-1"
    "$super Shift, H, movewindow, l"
    "$super Shift, J, movewindow, d"
    "$super Shift, K, movewindow, u"
    "$super Shift, L, movewindow, r"
    "$super = $mainMod, left, resizeactive, -50 0"
    "$super = $mainMod, down, resizeactive, 0 50"
    "$super = $mainMod, up, resizeactive, 0 -50"
    "$super = $mainMod, right, resizeactive, 50 0"

    # Playback
    " , XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
    " , XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
    " , XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
    " , XF86AudioPlay, exec, playerctl play-pause"
    " , XF86AudioNext, exec, playerctl next"
    " , XF86AudioNext, exec, playerctl previous"

  ];
  # Resize Window with Super + Mouse Drag
  bindm = [ "$super, mouse:272, movewindow" "$super, mouse:273, resizewindow" ];

}
