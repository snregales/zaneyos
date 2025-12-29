{pkgs, ...}: let
  claudecode-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "claudecode.nvim";
    version = "v0.3.0";
    src = pkgs.fetchFromGitHub {
      owner = "coder";
      repo = "claudecode.nvim";
      rev = "main";
      sha256 = "sha256-PmSYIE7j9C2ckJc9wDIm4KCozXP0z1U9TOdItnDyoDQ=";
    };
  };
in {
  programs.nvf.settings.vim = {
    # Add claudecode.nvim plugin (requires snacks.nvim dependency)
    extraPlugins = {
      claudecode-nvim = {
        package = claudecode-nvim;
      };
    };

    # Setup the plugin
    luaConfigRC.claudecode = ''
      require("claudecode").setup({})
    '';

    # Add keymaps for Claude Code
    keymaps = [
      # AI group
      {
        key = "<leader>a";
        mode = ["n" "v"];
        action = "";
        desc = "+ai";
      }
      # Toggle Claude
      {
        key = "<leader>ac";
        mode = ["n"];
        action = "<cmd>ClaudeCode<cr>";
        desc = "Toggle Claude";
      }
      # Focus Claude window
      {
        key = "<leader>af";
        mode = ["n"];
        action = "<cmd>ClaudeCodeFocus<cr>";
        desc = "Focus Claude";
      }
      # Resume Claude session
      {
        key = "<leader>ar";
        mode = ["n"];
        action = "<cmd>ClaudeCode --resume<cr>";
        desc = "Resume Claude";
      }
      # Continue Claude session
      {
        key = "<leader>aC";
        mode = ["n"];
        action = "<cmd>ClaudeCode --continue<cr>";
        desc = "Continue Claude";
      }
      # Add current buffer
      {
        key = "<leader>ab";
        mode = ["n"];
        action = "<cmd>ClaudeCodeAdd %<cr>";
        desc = "Add current buffer";
      }
      # Send selection to Claude
      {
        key = "<leader>as";
        mode = ["v"];
        action = "<cmd>ClaudeCodeSend<cr>";
        desc = "Send to Claude";
      }
      # Select model
      {
        key = "<leader>am";
        mode = ["n"];
        action = "<cmd>ClaudeCodeSelectModel<cr>";
        desc = "Select model";
      }
      # Accept diff
      {
        key = "<leader>aa";
        mode = ["n"];
        action = "<cmd>ClaudeCodeDiffAccept<cr>";
        desc = "Accept diff";
      }
      # Deny diff
      {
        key = "<leader>ad";
        mode = ["n"];
        action = "<cmd>ClaudeCodeDiffDeny<cr>";
        desc = "Deny diff";
      }
    ];
  };
}
