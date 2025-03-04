{ pkgs, config, inputs, ... } :

{

home.packages = with pkgs; [
	xfce.xfce4-power-manager
	feh
	epr
	pass-git-helper
	cava
	moc
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
	nicotine-plus
	easyeffects
	gcc14
	peaclock
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
	jetbrains.idea-community-bin
	libsForQt5.qt5.qttools
	gscreenshot
	j4-dmenu-desktop
	];	

}
