{ config, ... }:

{
	imports = [
		"${builtins.fetchGit { url = "https://github.com/NixOS/nixos-hardware.git"; }}/asus/zephyrus/ga402x/nvidia"
		../../modules/apps/apps.nix
		../../modules/system/de/gnome.nix
	];

	config.networking.hostName = "alpha";

	config.hardware.nvidia = {
		package = config.boot.kernelPackages.nvidiaPackages.beta;
	};

	options.hardware.asus.battery.chargeUpTo = 90;
}
