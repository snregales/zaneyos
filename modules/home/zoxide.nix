_: let
  "cd.." = "cd ..";
  ".." = "cd ..";
in {
  programs = {
    zoxide = {
      enable = true;
      enableZshIntegration = true;
      enableBashIntegration = true;
      options = [
        "--cmd cd"
      ];
    };
    zsh.shellAliases = {
      inherit "cd.." "..";
    };
    bash.shellAliases = {
      inherit "cd.." "..";
    };
  };
}
