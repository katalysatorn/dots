{ pkgs, ... }:

{
	environment.gnome.excludePackages = with pkgs.gnome; [
		baobab
		cheese
		eog
		epiphany
		gedit
		simple-scan
		totem
		yelp
		evince
		geary
		seahorse
		gnome-calculator
		gnome-characters
		gnome-contacts
		gnome-font-viewer
		gnome-logs
		gnome-maps
		gnome-music
		gnome-system-monitor
		gnome-terminal
		pkgs.gnome-connections
		pkgs.gnome-text-editor
		pkgs.gnome-tour
		pkgs.gnome-photos
	];

	environment.systemPackages = with pkgs; [
		gnomeExtensions.appindicator
		gnomeExtensions.blur-my-shell
		gnomeExtensions.compact-top-bar
		gnome.gnome-tweaks
		gnomeExtensions.pop-shell
	];
}

