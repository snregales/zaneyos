{
  profile,
  pkgs,
  ...
}: {
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting = {
      enable = true;
      highlighters = ["main" "brackets" "pattern" "regexp" "root" "line"];
    };

    plugins = [
      {
        name = "vi-mode";
        src = pkgs.zsh-vi-mode;
        file = "share/zsh-vi-mode/zsh-vi-mode.plugin.zsh";
      }
    ];

    shellAliases = {
      _ = "sudo";

      # date/time
      timestamp = "date +%Y-%m-%d %H:%M:%S";
      datestamp = "date +%Y-%m-%d";
      isodate = "date +%Y-%m-%dT%H:%M:%S%z";
      utc = "date -u +%Y-%m-%dT%H:%M:%SZ";
      unixepoch = "date +%s";

      # find
      fd = "find . -type d -name";
      ff = "find . -type f -name";

      # mask built-ins with better defaults
      ping = "ping -c 5";

      # directories
      mkdir = "mkdir -p";
      secrets = "cd $XDG_DATA_HOME/secrets";

      # tar
      tarls = "tar -tvf";
      untar = "tar -xf";

      systui = "systemctl-tui";

      fr = "nh os switch --hostname ${profile}";
      fu = "nh os switch --hostname ${profile} --update";
      zu = "sh <(curl -L https://gitlab.com/Zaney/zaneyos/-/releases/latest/download/install-zaneyos.sh)";
      ncg = "nix-collect-garbage --delete-old && sudo nix-collect-garbage -d && sudo /run/current-system/bin/switch-to-configuration boot";
      cat = "bat";
      man = "batman";
    };
  };
}
