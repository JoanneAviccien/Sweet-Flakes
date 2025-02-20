{ pkgs, config, inputs, ... } :

{

home.packages = with pkgs; [
	git
	gimp
	libreoffice-fresh
	aseprite
	inputs.zen-browser.packages."${system}".default
	ranger
	lazygit
	p7zip
	nchat
	edk2
	edk2-uefi-shell
	mpv
	nicotine-plus
	easyeffects
	bunnyfetch
	gcc14
	peaclock
	musikcube
	htop
	guake
	abaddon
	discordo
	git-credential-manager
	dialog
	ttyper
	vscode
	rar
	balatro
	fastfetch
	jdk23
];	

}
