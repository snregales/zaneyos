{pkgs, ...}: {
  # https://devenv.sh/packages/
  packages = with pkgs; [
    git
    git-lfs
    neovim
    lazygit
  ];

  # https://devenv.sh/languages/
  # languages.rust.enable = true;
  languages = {
    nix.enable = true;
    shell.enable = true;
    python.enable = true;
  };

  # https://devenv.sh/basics/
  enterShell = ''
  '';

  # https://devenv.sh/tests/
  enterTest = ''
    echo "Running tests"
    git --version | grep --color=auto "${pkgs.git.version}"
  '';

  # https://devenv.sh/git-hooks/
  git-hooks.hooks = {
    # Nix
    alejandra.enable = true;
    deadnix.enable = true;

    # Data files
    check-yaml.enable = true;
    check-json.enable = true;
    pretty-format-json = {
      enable = true;
      args = ["--autofix" "--no-sort-keys"];
    };

    # Misc checks
    check-added-large-files.enable = true;
    check-case-conflicts.enable = true;
    check-merge-conflicts.enable = true;

    # Global hooks
    end-of-file-fixer.enable = true;
    trim-trailing-whitespace.enable = true;
    no-commit-to-branch.enable = true;
    shellcheck.enable = true;

    # execute example shell from Markdown files
    mdsh.enable = true;
  };
}
