{ pkgs, ... }:

{
	imports = with pkgs; [
		./apps-cli.nix
		./gaming.nix
	];

	environment.systemPackages = with pkgs; [
		alacritty
	];
}
