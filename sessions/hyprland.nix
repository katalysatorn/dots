{ pkgs, ... }:
{
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };

  programs.hyprland = {
    enable = true;
  };

  environment.systemPackages = with pkgs; [
    wofi
    dunst
    waybar
    kitty
    kdePackages.dolphin
  ];
}
