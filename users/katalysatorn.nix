{
	users.users.katalysatorn = {
		isNormalUser = true;
		description = "Blair Burton";
		extraGroups = [ "networkmanager" "wheel" ];
	};

	home-manager.users.katalysatorn = { pkgs, ... }: {
		home.packages = with pkgs; [
			neovim
		];

		programs.fish.enable = true;

		home.stateVersion = "23.11";

		programs.home-manager.enable = true;
	};
}
