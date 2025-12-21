{
  programs.zed-editor = {
    enable = true;
    extensions = [
      "nix"
      "catppuccin-blur"
    ];

    userSettings = {
      vim_mode = true;
    };
  };
}
