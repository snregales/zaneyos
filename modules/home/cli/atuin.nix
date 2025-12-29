{pkgs, ...}: {
  programs.atuin = {
    enable = true;
    enableBashIntegration = false;
    enableZshIntegration = true;
    package = pkgs.atuin;
    settings = {
      # Filter out commands with 3 words or less (0-2 spaces)
      history_filter = [
        "^[^\\s]*(\\s+[^\\s]*){0,1}$" # Matches 1-2 words
      ];
      # Minimum command length (characters)
      min_command_length = 10;
    };
  };
}
