{ config, pkgs, ... }:

{
	imports = [
		<home-manager/nixos>
		./users/katalysatorn.nix
		./modules/apps/apps-cli.nix
	];



	nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
