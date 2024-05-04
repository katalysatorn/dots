{
	imports = [
		./custom-hardware.nix
		../../modules/apps/apps.nix
		../../modules/system/de/gnome.nix
	];

	networking.hostName = "alpha";

}
