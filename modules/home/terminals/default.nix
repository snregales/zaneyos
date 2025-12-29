{host, ...}: let
  vars = import ../../../hosts/${host}/variables.nix;
  inherit
    (vars)
    alacrittyEnable
    ghosttyEnable
    tmuxEnable
    weztermEnable
    ;
in {
  imports =
    [
      ./kitty.nix
      ./zellij.nix
    ]
    ++ (
      if weztermEnable
      then [./wezterm.nix]
      else []
    )
    ++ (
      if ghosttyEnable
      then [./ghostty.nix]
      else []
    )
    ++ (
      if tmuxEnable
      then [./tmux.nix]
      else []
    )
    ++ (
      if alacrittyEnable
      then [./alacritty.nix]
      else []
    );
}
