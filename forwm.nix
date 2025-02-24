{ pkgs, config, inputs, ... }:
{

home.packages = with pkgs; [
	pcmanfm
	nsixv
	lxappearance
];

}
