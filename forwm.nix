{ pkgs, config, inputs, ... }:
{

home.packages = with pkgs; [
	udisks
	udiskie
	gvfs
	zathura
	xdg-utils
	xdg-launch
	fuse3
	bindfs
	exfat
	ntfs3g
	flatpak
	tiramisu
	xorg.xclock
	pcmanfm
	nsxiv
	lxappearance
	brightnessctl
	polkit
	polkit_gnome
	mpv
	riff
	fvwm3
	ly
	pulsemixer
	gparted
	xarchiver
	rxvt-unicode-unwrapped-emoji
	terminus_font
	nerd-fonts.noto
	nerd-fonts.terminess-ttf
	xorg.libXft
	fltk14
	hsetroot
	ftgl
	dmenu
	picom-pijulius
	alsa-utils
	i3lock
];

}
