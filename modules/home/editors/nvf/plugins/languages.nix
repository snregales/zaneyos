_: {
  programs.nvf.settings.vim.languages = {
    enableFormat = true;
    enableTreesitter = true;
    enableExtraDiagnostics = true;

    lua = {
      enable = true;
      lsp.lazydev.enable = true;
    };
    python = {
      enable = true;
      format.type = ["ruff"];
    };
    nix.enable = true;
    rust.enable = true;
    clang.enable = true;
    markdown = {
      enable = true;
      extensions.render-markdown-nvim = {
        enable = true;
        setupOpts = {render-modes = ["n" "c" "t"];};
      };
    };
    html.enable = true;
    yaml.enable = true;
  };
}
