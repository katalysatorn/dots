{ config, pkgs, ... }:

{
	imports = [
		"${builtins.fetchGit { url = "https://github.com/NixOS/nixos-hardware.git"; }}/asus/zephyrus/ga402x/nvidia"
		../../modules/apps/apps.nix
		../../modules/system/de/gnome.nix
	];
	config.boot.kernelPackages = pkgs.linuxPackages_zen;

	config.environment.systemPackages = with pkgs; [
	];

	config.networking.hostName = "alpha";

	config.hardware.nvidia = {
		package = config.boot.kernelPackages.nvidiaPackages.beta;
	};

	options.hardware.asus.battery.chargeUpTo = 90;

	config.hardware.bluetooth = {
		enable = true;
		powerOnBoot = true;
		settings = {
			General = {
				Experimental = true;
			};
		};
	};
}
