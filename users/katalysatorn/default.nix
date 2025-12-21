{ pkgs, catppuccin, ... }:
{
  home.stateVersion = "25.11";

  home.username = "katalysatorn";
  home.homeDirectory = "/home/katalysatorn";

  imports = [
    ./gpg.nix
    ./ssh.nix

    ../../programs/downloads/qbittorrent.nix
    ../../programs/browsers/firefox.nix
    ../../programs/editors/zed-editor.nix
  ];

  home.packages = with pkgs; [
    # test
    cowsay
    stow
    fzf
    zoxide
    neovim
    git
    # zed-editor
    # nixd
    # nil
  ];

  catppuccin = {
      enable = true;
      flavor = "mocha";
  };
}
