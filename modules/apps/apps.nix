{ pkgs, ... }:

{
	imports = with pkgs; [
		./apps-cli.nix
		./steam.nix
	];

	environment.systemPackages = with pkgs; [
		alacritty
	];
}
