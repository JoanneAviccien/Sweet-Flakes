{ inputs, config, pkgs, ... }:

{
  home.username = "herrscherin";
  home.homeDirectory = "/home/herrscherin";

  imports = [ ./pkgs.nix ./forwm.nix ];

  home.stateVersion = "24.11";

   programs.git = {
    extraConfig.credential.helper = "manager";
    extraConfig.credential."https://github.com".username = "JoanneAviccien";
    extraConfig.credential.credentialStore = "cache";
    enable = true;
  };

  xdg.mime.enable = true;
  xdg.mimeApps.associations.added = {
	"image/png" = "nsxiv.desktop";
	"image/jpg" = "nsxiv.desktop";
	"image/gif" = "nsxiv.desktop";
	"image/jpeg" = "nsxiv.desktop";
	"application/pdf" = "org.pwmt.zathura-pdf-mupdf";
	"application/epub+zip" = "org.pwmt.zathura-pdf-mupdf.desktop";
	};

      # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
