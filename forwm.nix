{ pkgs, config, inputs, ... }:
{

home.packages = with pkgs; [
	pcmanfm
	nsxiv
	lxappearance
	brightnessctl
	pavucontrol
	polkit
];

}
