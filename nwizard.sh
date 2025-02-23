[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="NixOS Wizard"
TITLE="Select Option"
MENU="Choose one of the following options:"
OPTIONS=(1 "Full Rebuild"
	 2 "Switch"
	 3 "Add nixpkgs"
 	 4 "Cleaner")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            nixos-rebuild switch --flake /home/herrscherin/.config/home-manager/ &&
	    nix-collect-garbage --delete-old &&
	    nixos-rebuild boot --flake /home/herrscherin/.config/home-manager/
            ;;
        2)
            nixos-rebuild switch --flake /home/herrscherin/.config/home-manager/ 
            ;;
        3)
            nvim /home/herrscherin/.config/home-manager/pkgs.nix &&
	    nixos-rebuild switch --flake /home/herrscherin/.config/home-manager/ 
            ;;
	4)
	    nix-collect-garbage --delete-old
	    ;;
esac
