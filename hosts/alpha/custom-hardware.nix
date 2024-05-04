{ config, lib, pkgs, modulesPath, ... }:

{
	imports = [
    		"${builtins.fetchGit { url = "https://github.com/NixOS/nixos-hardware.git"; }}/asus/zephyrus/ga402x/nvidia"  
	];

	config.hardware.nvidia = {
		package = config.boot.kernelPackages.nvidiaPackages.beta;
	};

	options.hardware.asus.battery.chargeUpTo = 90;
}
