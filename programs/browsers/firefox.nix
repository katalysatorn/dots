{ pkgs, ... }:
{
  programs.firefox = {
    enable = true;

    profiles.katalysatorn = {
      isDefault = true;
      extensions.packages = with pkgs.nur.repos.rycee.firefox-addons; [
        ublock-origin
        proton-pass
      ];
      # extensions.force = true; # Not a huge fan of this one as it logs out of proton every time a rebuild is done

      settings = {
        "browser.startup.homepage" = "https://home.katalysatorn.xyz";
        "extensions.autoDisableScopes" = 0;
        "sidebar.revamp" = true;
        "sidebar.verticalTabs" = true;
        "sidebar.visiblity" = "expand-on-hover";
        "browser.contextual-password-manager.enabled" = false;
      };
    };
  };
}
