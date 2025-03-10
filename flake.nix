{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    home-manager = {
    	url = "github:nix-community/home-manager";
    	inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {	self, 
  		nixpkgs,
		home-manager, 
		zen-browser, ... } @ inputs:
  let
  	system = "x86_64-linux";
	pkgs = import nixpkgs {
		inherit system;
		config = {
			allowUnfree = true;
		};
	       };
  in 
  {
    nixosConfigurations = {
    nixos = nixpkgs.lib.nixosSystem { 
     specialArgs = { inherit inputs system; };
     modules = [
      ./configuration.nix
      ./alias.nix
      home-manager.nixosModules.home-manager {
      home-manager.useGlobalPkgs = true;
      }
	];
    };
  };
  };
}
