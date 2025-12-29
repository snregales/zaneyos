{host, ...}: let
  vars = import ../../hosts/${host}/variables.nix;
  inherit
    (vars)
    barChoice
    waybarChoice
    ;
  # Select bar module based on barChoice
  barModule =
    if barChoice == "noctalia"
    then ./noctalia.nix
    else waybarChoice;
in {
  imports = [
    ./amfora.nix
    ./cli
    ./overview.nix
    ./python.nix
    ./emoji.nix
    ./eza.nix
    ./fastfetch
    ./gtk.nix
    ./hyprland
    ./terminals
    ./obs-studio.nix
    ./editors
    ./rofi
    ./qt.nix
    ./scripts
    ./scripts/gemini-cli.nix
    ./starship-ddubs-1.nix
    ./stylix.nix
    ./swappy.nix
    ./swaync.nix
    ./tealdeer.nix
    ./virtmanager.nix
    barModule
    ./wlogout
    ./xdg.nix
    ./yazi
    ./zen-browser.nix
    ./zoxide.nix
    ./zsh.nix
  ];
}
