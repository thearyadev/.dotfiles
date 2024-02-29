{
  mainBar = {
    layer = "top";
    modules-left = [ "disk" "memory" "cpu" "battery" ];
    modules-center = [ "hyprland/workspaces" ];
    modules-right = [ "wireplumber" "network" "clock" ];
    disk = { format = "   {free}"; };
    memory = {
      format =  "   {used} / {total}Gib";
      interval = 3;
    };
    cpu = {
      format = "{usage}%";
      interval = 3;
    };
    "wlr/workspaces" = { format = "{icon}"; };
    wireplumber = {
      format = "{icon}   {volume}% - {node_name}";
      format-muted = "AUDIO MUTED";
      on-click = "helvum";
      format-icons = [ "" "" "" ];
      max-volume = 120.0;
    };
    network = {
      format = "{ifname} - {bandwidthTotalBits}";
      interval = 3;
    };
    clock = { format = "{:%I:%M %m-%d-%Y}"; };
  };

}
