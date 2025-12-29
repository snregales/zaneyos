{pkgs, ...}: {
  programs.nvf.settings.vim.treesitter = {
    enable = true;
    fold = true;
    context.enable = true;
    grammars = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      bash
      c
      diff
      html
      javascript
      jsdoc
      json
      jsonc
      lua
      luadoc
      luap
      markdown
      markdown_inline
      nix
      printf
      python
      query
      regex
      rust
      toml
      tsx
      typescript
      vim
      vimdoc
      xml
      yaml
    ];
  };
}
