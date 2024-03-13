# Edit this configuration file to define what should be installed onconfig
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, inputs, ... }:
let
  unstable = import <nixos-unstable> {config = { allowUnfree = true; };};
in 

{
  imports = [ # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./main-user.nix
  ];
  main-user.enable = true;
  main-user.userName = "arya";

  # Bootloader.
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/nvme0n1";
  boot.loader.grub.useOSProber = true;

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;
  # Set your time zone.
  time.timeZone = "America/Toronto";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_CA.UTF-8";

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.arya = {
    isNormalUser = true;
    description = "Arya Kothari";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [ ];
  };

  # Enable automatic login for the user.
  services.getty.autologinUser = "arya";

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    curl
    zsh
    neovim
    kitty
    brave
    git
    fish
    rofi-wayland
    waybar
    helvum
    pavucontrol
    firefox
    vesktop
    grim
    hyprpaper
    unstable.xdg-desktop-portal-hyprland
    slurp
    xsel
    alsa-utils
    unzip
    nerdfonts
    wl-clipboard
    cmake
    jellyfin-media-player
    rustup
    neofetch
    sddm-chili-theme
    unstable.pyprland
    gcc
  ];
  fonts.packages = with pkgs;
    [ (nerdfonts.override { fonts = [ "FiraCode" ]; }) ];
  programs.steam.enable = true;
  programs.zsh.enable = true;
  programs.hyprland.enable = true;
  programs.hyprland.package =
    inputs.hyprland.packages."${pkgs.system}".hyprland;
  services.xserver.enable = true;
  services.xserver.displayManager.sddm = {
    enable = true;
    theme = "/run/current-system/sw/share/sddm/themes/chili";
  };
  #hardware.pulseaudio.enable = true;
  #hardware.pulseaudio.support32Bit = true;
  #nixpkgs.config.pulseaudio = true;
  users.extraUsers.arya.extraGroups = [ "audio" ];
  services.flatpak.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;
  };
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.production;
  };

  boot.kernelParams = [
    "module_blacklist=amdgpu"
    "module_blacklist=i2c_nvidia_gpu"
    "nvidia-drm.modeset=1"
    "initcall_blacklist=simpledrm_platform_driver_init"
  ];
  programs.ssh.extraConfig = ''
  Host server
    HostName 192.168.1.166
    User arya
    ForwardX11 yes
    ForwardX11Trusted yes
  '';

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?
}
