{lib, ...}: let
  inherit (lib.generators) mkLuaInline;
  inherit (lib.lists) map filter;

  autocmds = filter (cmd: cmd.enable or true) [
    {
      desc = "Highlight on yank";
      event = ["TextYankPost"];
      group = "highlight-yank";
      callback = mkLuaInline ''
        function()
          (vim.hl or vim.highlight).on_yank()
        end
      '';
    }
    {
      desc = "Close some filetypes with <q>";
      event = ["FileType"];
      group = "close-with-q";
      pattern = [
        "PlenaryTestPopup"
        "checkhealth"
        "dbout"
        "gitsigns-blame"
        "grug-far"
        "help"
        "lspinfo"
        "neotest-output"
        "neotest-output-panel"
        "neotest-summary"
        "notify"
        "qf"
        "spectre_panel"
        "startuptime"
        "tsplayground"
      ];
      callback = mkLuaInline ''
        function()
          vim.bo[event.buf].buflisted = false
          vim.schedule(function()
            vim.keymap.set("n", "q", function()
              vim.cmd("close")
              pcall(vim.api.nvim_buf_delete, event.buf, { force = true })
            end, {
              buffer = event.buf,
              silent = true,
              desc = "Quit buffer",
            })
          end)
        end
      '';
    }
    {
      desc = "Make it easier to close man-files when opened inline";
      event = ["FileType"];
      group = "man-unlisted";
      pattern = ["man"];
      callback = mkLuaInline ''
        function(event)
          vim.bo[event.buf].buflisted = false
        end
      '';
    }
    {
      desc = "Wrap and check for spell in text filetypes";
      event = ["FileType"];
      group = "wrap-spell";
      pattern = ["text" "plaintex" "typst" "gitcommit" "markdown"];
      callback = mkLuaInline ''
        function(event)
          vim.opt_local.wrap = true
          vim.opt_local.spell = true
        end
      '';
    }
    {
      desc = "Auto create dir when saving a file, in case some intermediate directory does not exist";
      event = ["BufWritePre"];
      group = "auto-create-dir";
      callback = mkLuaInline ''
        function(event)
          if event.match:match("^%w%w+:[\\/][\\/]") then
            return
          end
          local file = vim.uv.fs_realpath(event.match) or event.match
          vim.fn.mkdir(vim.fn.fnamemodify(file, ":p:h"), "p")
        end
      '';
    }
    {
      desc = "Resize splits if window got resized";
      event = ["VimResized"];
      group = "resize-splits";
      callback = mkLuaInline ''
        function(event)
          local current_tab = vim.fn.tabpagenr()
          vim.cmd("tabdo wincmd =")
          vim.cmd("tabnext " .. current_tab)
        end
      '';
    }
    {
      desc = "Go to last loc when opening a buffer";
      event = ["BufReadPost"];
      group = "last-loc";
      callback = mkLuaInline ''
        function(event)
          local exclude = { "gitcommit" }
          local buf = event.buf
          if vim.tbl_contains(exclude, vim.bo[buf].filetype) or vim.b[buf].lazyvim_last_loc then
            return
          end
          vim.b[buf].lazyvim_last_loc = true
          local mark = vim.api.nvim_buf_get_mark(buf, '"')
          local lcount = vim.api.nvim_buf_line_count(buf)
          if mark[1] > 0 and mark[1] <= lcount then
            pcall(vim.api.nvim_win_set_cursor, 0, mark)
          end
        end
      '';
    }
  ];
  augroups =
    map (cmd: {
      name = cmd.group;
      enable = cmd.enable or true;
      clear = true;
    })
    autocmds;
in {
  programs.nvf.settings.vim = {
    inherit augroups autocmds;
  };
}
