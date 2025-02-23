{ inputs, config, pkgs, lib, ... }:
	
	{
		program = {
			command-not-found.enable = false;

			bash = {
				shellAliases = {
					wizard = "./.config/home-manager/nwizard.sh";
				};
			};
		};
	}
