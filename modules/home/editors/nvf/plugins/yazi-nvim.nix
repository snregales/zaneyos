{
  config,
  lib,
  ...
}: let
  inherit (lib.generators) mkLuaInline;
in {
  programs.nvf.settings.vim.utility.yazi-nvim = {
    enable = true;
    mappings = {
      yaziToggle = "<leader>fE";
      openYaziDir = "<leader>fe";
    };
    setupOpts = {
      open_for_directories = true;
      highlight_groups.hover_buffer.bg = "#${config.lib.stylix.colors.base00}";
      floating_window_scaling_factor = 0.7;
      yazi_floating_window_winblend = 30;
      yazi_floating_window_border = "none";
      integration = {
        resolve_relative_path_application = "realpath";
        grep_in_directory = mkLuaInline ''
          function(directory)
            require("fzf-lua").grep({ cwd = directory })
          end
        '';
        grep_in_selected_files = mkLuaInline ''
          function(selected_files)
            require("fzf-lua").grep({ files = selected_files })
          end
        '';
      };
      keymaps = {
        grep_in_directory = "<c-f>";
        replace_in_directory = "<c-r>";
        send_to_quickfix_list = "Q";
        open_and_pick_window = "W";
        open_file_in_tab = false;
      };
    };
  };
}
