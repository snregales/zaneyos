_: {
  imports = [
    ./autocmds.nix
    ./keymaps.nix
    ./options.nix
  ];
  programs.nvf.settings.vim = {
    vimAlias = true;
    viAlias = true;
    withNodeJs = true;
    clipboard = {
      enable = true;
      providers.wl-copy.enable = true;
      registers = "unnamedplus";
    };
  };
  # # Source custom Lua explicitly
  # home.file.".config/nvim/init.lua" = {
  #   text = ''
  #     vim.notify("Main init.lua loaded", vim.log.levels.INFO)
  #     pcall(require, "custom.init")
  #   '';
  # };

  # home.file.".config/nvim/lua/custom/init.lua" = {
  #   text = ''
  #     -- Debug notification
  #     vim.notify("Custom Lua loaded", vim.log.levels.INFO)
  #     -- Diagnostics configuration (fallback)
  #     vim.diagnostic.config({
  #       virtual_text = {
  #         spacing = 4,
  #         prefix = "●"
  #       },
  #       signs = true,
  #       underline = true,
  #       update_in_insert = false,
  #       severity_sort = true
  #     })
  #   '';
  # };
}
