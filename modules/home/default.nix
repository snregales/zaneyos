{host, ...}: let
  vars = import ../../hosts/${host}/variables.nix;
  inherit
    (vars)
    alacrittyEnable
    barChoice
    ghosttyEnable
    tmuxEnable
    waybarChoice
    weztermEnable
    ;
  # Select bar module based on barChoice
  barModule =
    if barChoice == "noctalia"
    then ./noctalia.nix
    else waybarChoice;
in {
  imports =
    [
      ./amfora.nix
      ./bash.nix
      ./bashrc-personal.nix
      ./cli
      ./overview.nix
      ./python.nix
      ./emoji.nix
      ./eza.nix
      ./fastfetch
      ./gtk.nix
      ./hyprland
      ./terminals/kitty.nix
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
    ]
    ++ (
      if weztermEnable
      then [./terminals/wezterm.nix]
      else []
    )
    ++ (
      if ghosttyEnable
      then [./terminals/ghostty.nix]
      else []
    )
    ++ (
      if tmuxEnable
      then [./terminals/tmux.nix]
      else []
    )
    ++ (
      if alacrittyEnable
      then [./terminals/alacritty.nix]
      else []
    );
}
