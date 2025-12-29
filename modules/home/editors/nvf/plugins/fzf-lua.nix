_: {
  programs.nvf.settings.vim = {
    fzf-lua = {
      enable = true;
      profile = "fzf-native";
    };
    keymaps = [
      {
        key = "<leader><leader>";
        mode = ["n"];
        action = "<cmd>FzfLua files<cr>";
        desc = "Search files by name";
      }
      {
        key = "<leader>/";
        mode = ["n"];
        action = "<cmd>FzfLua live_grep<cr>";
        desc = "Search files by contents";
      }
      {
        key = "<leader>ff";
        mode = ["n"];
        action = "<cmd>FzfLua files<cr>";
        desc = "Find files";
      }
      {
        key = "<leader>fr";
        mode = ["n"];
        action = "<cmd>FzfLua oldfiles<cr>";
        desc = "Recent";
      }
      # git
      {
        key = "<leader>gc";
        mode = ["n"];
        action = "<cmd>FzfLua git_commits<CR>";
        desc = "Commits";
      }
      # search
      {
        key = "<leader>sg";
        mode = ["n"];
        action = "<cmd>FzfLua live_grep<cr>";
        desc = "Search files by contents";
      }
      {
        key = "<leader>sw";
        mode = ["n"];
        action = "<cmd>FzfLua grep_cword<cr>";
        desc = "Search for WORD under cursor";
      }
      {
        key = "<leader>sw";
        mode = ["v"];
        action = "<cmd>FzfLua grep_visual<cr>";
        desc = "Search selection";
      }
      # LSP
      {
        key = "gd";
        mode = ["n"];
        action = "<cmd>FzfLua lsp_definitions jump1=true ignore_current_line=true<cr>";
        desc = "Goto Definition";
        # has = "definition";
      }
      {
        key = "gr";
        mode = ["n"];
        action = "<cmd>FzfLua lsp_references jump1=true ignore_current_line=true<cr>";
        desc = "References";
        nowait = true;
      }
      {
        key = "gI";
        mode = ["n"];
        action = "<cmd>FzfLua lsp_implementations jump1=true ignore_current_line=true<cr>";
        desc = "Goto Implementation";
      }
      {
        key = "gy";
        mode = ["n"];
        action = "<cmd>FzfLua lsp_typedefs jump1=true ignore_current_line=true<cr>";
        desc = "Goto T[y]pe Definition";
      }
    ];
  };
}
