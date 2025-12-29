_: {
  imports = [
    ./fzf-lua.nix
    ./languages.nix
    ./lsp.nix
    ./snacks
    ./treesitter.nix
    ./yazi-nvim.nix
  ];
  programs.nvf.settings.vim = {
    spellcheck.enable = true;
    autopairs.nvim-autopairs.enable = true;
    autocomplete.blink-cmp = {
      enable = true;
      setupOpts.signature.enabled = true;
    };
    snippets.luasnip.enable = true;
    projects.project-nvim.enable = true;
    session.nvim-session-manager.enable = true;
    comments.comment-nvim.enable = true;
    git = {
      enable = true;
      gitsigns = {
        enable = true;
        # codeActions.enable = true;
      };
    };
    utility = {
      surround.enable = true;
      diffview-nvim.enable = true;
      motion = {
        flash-nvim.enable = true;
        hop.enable = true;
        leap.enable = true;
      };
      images.image-nvim = {
        enable = true;
        setupOpts.backend = "kitty";
      };
    };
    statusline.lualine.enable = true;
    ui = {
      noice.enable = true;
      colorizer.enable = true;
      smartcolumn = {
        enable = true;
        setupOpts.colorcolumn = "100";
      };
      fastaction.enable = true;
      # nvim-ufo.enable = true;
    };
    mini = {
      icons.enable = true;
      starter.enable = true;
    };
    debugger.nvim-dap.enable = true;
    visuals = {
      nvim-web-devicons.enable = true;
      fidget-nvim.enable = true;
      highlight-undo.enable = true;
    };
  };
}
