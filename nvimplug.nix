{ pkgs, config, inputs, ... } :

{

home.packages = with pkgs; [
	vimPlugins.vim-visual-multi
	];

}
