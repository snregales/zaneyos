{host, ...}: let
  vars = import ../../../hosts/${host}/variables.nix;
  inherit
    (vars)
    vscodeEnable
    helixEnable
    doomEmacsEnable
    antigravityEnable
    ;
in {
  imports =
    [
      ./nvf
    ]
    ++ (
      if helixEnable
      then [./evil-helix.nix]
      else []
    )
    ++ (
      if vscodeEnable
      then [./vscode.nix]
      else []
    )
    ++ (
      if antigravityEnable
      then [./antigravity.nix]
      else []
    )
    ++ (
      if doomEmacsEnable
      then [
        ./doom-emacs-install.nix
        ./doom-emacs.nix
      ]
      else []
    );
}
