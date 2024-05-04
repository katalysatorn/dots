{
	users.users.katalysatorn = {
		isNormalUser = true;
		description = "Blair Burton";
		extraGroups = [ "networkmanager" "wheel" "bluetooth" ];
	};

	home-manager.users.katalysatorn = { pkgs, ... }: {
		home.packages = with pkgs; [
			neovim
		];

		home.stateVersion = "23.11";

		programs.home-manager.enable = true;

		programs.zsh.enable = true;
	};
}
