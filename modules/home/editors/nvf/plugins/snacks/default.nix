_: {
  imports = [
    ./claude.nix
    ./dashboard.nix
    ./keymaps.nix
  ];
  programs.nvf.settings.vim.utility.snacks-nvim.enable = true;
}
