_: {
  programs.nvf.settings.vim.keymaps = [
    {
      key = "<leader>;";
      mode = ["n"];
      action = "function() Snacks.picker.buffers() end";
      lua = true;
      desc = "Buffers";
    }
    {
      key = "<leader>:";
      mode = ["n"];
      action = "function() Snacks.picker.command_history() end";
      lua = true;
      desc = "Command history";
    }
    {
      key = "<leader>n";
      mode = ["n"];
      action = "function() Snacks.picker.notifications() end";
      lua = true;
      desc = "Notification History";
    }
    {
      key = "<leader>;";
      mode = ["n"];
      action = "function() Snacks.picker.buffers() end";
      lua = true;
      desc = "Buffers";
    }
    #     -- find
    {
      key = "<leader>fb";
      mode = ["n"];
      action = "function() Snacks.picker.buffers() end";
      lua = true;
      desc = "Buffers";
    }
    {
      key = "<leader>fB";
      mode = ["n"];
      action = "function() Snacks.picker.buffers({ hidden = true; nofile = true }) end";
      lua = true;
      desc = "Buffers (all)";
    }
    {
      key = "<leader>fg";
      mode = ["n"];
      action = "function() Snacks.picker.git_files() end";
      lua = true;
      desc = "Find Files (git-files)";
    }
    {
      key = "<leader>fR";
      mode = ["n"];
      action = "function() Snacks.picker.recent({ filter = { cwd = true }}) end";
      lua = true;
      desc = "Recent (cwd)";
    }
    {
      key = "<leader>fp";
      mode = ["n"];
      action = "function() Snacks.picker.projects() end";
      lua = true;
      desc = "Projects";
    }
    #     -- git
    {
      key = "<leader>gd";
      mode = ["n"];
      action = "function() Snacks.picker.git_diff() end";
      lua = true;
      desc = "Git Diff (hunks)";
    }
    {
      key = "<leader>gs";
      mode = ["n"];
      action = "function() Snacks.picker.git_status() end";
      lua = true;
      desc = "Git Status";
    }
    {
      key = "<leader>gS";
      mode = ["n"];
      action = "function() Snacks.picker.git_stash() end";
      lua = true;
      desc = "Git Stash";
    }
    #     -- Grep
    {
      key = "<leader>sb";
      mode = ["n"];
      action = "function() Snacks.picker.lines() end";
      lua = true;
      desc = "Buffer Lines";
    }
    {
      key = "<leader>sB";
      mode = ["n"];
      action = "function() Snacks.picker.grep_buffers() end";
      lua = true;
      desc = "Grep Open Buffers";
    }
    # {
    #   key = "<leader>sp";
    #   mode = ["n"];
    #   action = "function() Snacks.picker.lazy() end";
    #   lua = true;
    #   desc = "Search for Plugin Spec";
    # }
    #     -- search
    {
      key = "<leader>sR";
      mode = ["n"];
      action = "function() Snacks.picker.registers() end";
      lua = true;
      desc = "Registers";
    }
    {
      key = "<leader>s/";
      mode = ["n"];
      action = "function() Snacks.picker.search_history() end";
      lua = true;
      desc = "Search History";
    }
    {
      key = "<leader>sa";
      mode = ["n"];
      action = "function() Snacks.picker.autocmds() end";
      lua = true;
      desc = "Autocmds";
    }
    {
      key = "<leader>sc";
      mode = ["n"];
      action = "function() Snacks.picker.command_history() end";
      lua = true;
      desc = "Command History";
    }
    {
      key = "<leader>sC";
      mode = ["n"];
      action = "function() Snacks.picker.commands() end";
      lua = true;
      desc = "Commands";
    }
    {
      key = "<leader>sd";
      mode = ["n"];
      action = "function() Snacks.picker.diagnostics() end";
      lua = true;
      desc = "Diagnostics";
    }
    {
      key = "<leader>sD";
      mode = ["n"];
      action = "function() Snacks.picker.diagnostics_buffer() end";
      lua = true;
      desc = "Buffer Diagnostics";
    }
    {
      key = "<leader>sh";
      mode = ["n"];
      action = "function() Snacks.picker.help() end";
      lua = true;
      desc = "Help Pages";
    }
    {
      key = "<leader>sH";
      mode = ["n"];
      action = "function() Snacks.picker.highlights() end";
      lua = true;
      desc = "Highlights";
    }
    {
      key = "<leader>si";
      mode = ["n"];
      action = "function() Snacks.picker.icons() end";
      lua = true;
      desc = "Icons";
    }
    {
      key = "<leader>sj";
      mode = ["n"];
      action = "function() Snacks.picker.jumps() end";
      lua = true;
      desc = "Jumps";
    }
    {
      key = "<leader>sk";
      mode = ["n"];
      action = "function() Snacks.picker.keymaps() end";
      lua = true;
      desc = "Keymaps";
    }
    {
      key = "<leader>sl";
      mode = ["n"];
      action = "function() Snacks.picker.loclist() end";
      lua = true;
      desc = "Location List";
    }
    {
      key = "<leader>sM";
      mode = ["n"];
      action = "function() Snacks.picker.man() end";
      lua = true;
      desc = "Man Pages";
    }
    {
      key = "<leader>sm";
      mode = ["n"];
      action = "function() Snacks.picker.marks() end";
      lua = true;
      desc = "Marks";
    }
    {
      key = "<leader>sr";
      mode = ["n"];
      action = "function() Snacks.picker.resume() end";
      lua = true;
      desc = "Resume";
    }
    {
      key = "<leader>sq";
      mode = ["n"];
      action = "function() Snacks.picker.qflist() end";
      lua = true;
      desc = "Quickfix List";
    }
    {
      key = "<leader>su";
      mode = ["n"];
      action = "function() Snacks.picker.undo() end";
      lua = true;
      desc = "Undotree";
    }
    {
      key = "<leader>uC";
      mode = ["n"];
      action = "function() Snacks.picker.colorschemes() end";
      lua = true;
      desc = "Colorschemes";
    }
  ];
}
#
#
# { key = "<leader>/"; LazyVim.pick("grep");lua = true; desc = "Grep (Root Dir)" ;}
# { key = "<leader><space>"; LazyVim.pick("files");lua = true; desc = "Find Files (Root Dir)" ;}
# { key = "<leader>fc"; LazyVim.pick.config_files();lua = true; desc = "Find Config File" ;}
# { key = "<leader>ff"; LazyVim.pick("files");lua = true; desc = "Find Files (Root Dir)" ;}
# { key = "<leader>fF"; LazyVim.pick("files"; { root = false });lua = true; desc = "Find Files (cwd)" ;}
# { key = "<leader>fr"; LazyVim.pick("oldfiles");lua = true; desc = "Recent" ;}
# { key = "<leader>sg"; LazyVim.pick("live_grep");lua = true; desc = "Grep (Root Dir)" ;}
# { key = "<leader>sG"; LazyVim.pick("live_grep"; { root = false });lua = true; desc = "Grep (cwd)" ;}
# { key = "<leader>sw"; LazyVim.pick("grep_word");lua = true; desc = "Visual selection or word (Root Dir)"; mode = { "n"; "x" } ;}
# { key = "<leader>sW"; LazyVim.pick("grep_word"; { root = false });lua = true; desc = "Visual selection or word (cwd)"; mode = { "n"; "x" } ;}
#
#
# Snacks.toggle.option("spell"; { name = "Spelling" }):map("<leader>us")
# Snacks.toggle.option("wrap"; { name = "Wrap" }):map("<leader>uw")
# Snacks.toggle.option("conceallevel"; { off = 0; on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2; name = "Conceal Level" }):map("<leader>uc")
# Snacks.toggle.option("showtabline"; { off = 0; on = vim.o.showtabline > 0 and vim.o.showtabline or 2; name = "Tabline" }):map("<leader>uA")
# Snacks.toggle.option("background"; { off = "light"; on = "dark" ; name = "Dark Background" }):map("<leader>ub")
# Snacks.toggle.treesitter():map("<leader>uT")
# Snacks.toggle.diagnostics():map("<leader>ud")
# Snacks.toggle.dim():map("<leader>uD")
# Snacks.toggle.animate():map("<leader>ua")
# Snacks.toggle.indent():map("<leader>ug")
# Snacks.toggle.scroll():map("<leader>uS")
# Snacks.toggle.profiler():map("<leader>dpp")
# Snacks.toggle.profiler_highlights():map("<leader>dph")
# Snacks.toggle.zoom():map("<leader>wm"):map("<leader>uZ")
# Snacks.toggle.zen():map("<leader>uz")

