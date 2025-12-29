_: {
  programs.nvf.settings.vim = {
    binds = {
      whichKey.enable = true;
      cheatsheet.enable = true;
    };
    keymaps = [
      {
        key = "<s-down>";
        mode = ["v"];
        action = ":m '>+1<CR>gv=gv";
        desc = "moves lines down in visual selection";
      }
      {
        key = "<s-up>";
        mode = ["v"];
        action = ":m '<-2<CR>gv=gv";
        desc = "moves lines up in visual selection";
      }
      {
        key = "<";
        mode = ["v"];
        action = "<gv";
      }
      {
        key = ">";
        mode = ["v"];
        action = ">gv";
      }
      {
        key = "<c-d>";
        mode = ["n"];
        action = "<c-d>zz";
      }
      {
        key = "<c-u>";
        mode = ["n"];
        action = "<c-u>zz";
      }
      {
        key = "n";
        mode = ["n"];
        action = "nzzzv";
      }
      {
        key = "N";
        mode = ["n"];
        action = "Nzzzv";
      }
      {
        key = "<esc>";
        mode = ["n"];
        action = ":nohl<cr>";
      }
      {
        key = "<leader>fP";
        mode = ["n"];
        action = ''
          function()
            local filePath = vim.fn.expand("%:~")
            vim.fn.setreg("+", filePath)
            print("File path copied to clipboard: " .. filePath)
          end
        '';
        lua = true;
        desc = "Copy filepath to clipboard";
      }
      {
        key = "x";
        mode = ["n"];
        action = ''[["_x]]'';
        lua = true;
      }
      {
        key = "p";
        mode = ["v"];
        action = ''[["_dp]]'';
        lua = true;
      }
      {
        key = "<leader>p";
        mode = ["x"];
        action = ''[["_dP]]'';
        desc = "Paste without replacing register";
        lua = true;
      }
      {
        key = "<leader>d";
        mode = ["n" "v"];
        action = ''[["_d]]'';
        desc = "Delete without setting register";
        lua = true;
      }
      {
        key = "<leader>qq";
        mode = ["n"];
        action = "<cmd>qa<cr>";
        desc = "Quit All";
      }
      {
        key = "<leader>fn";
        mode = ["n"];
        action = "<cmd>enew<cr>";
        desc = "New File";
      }
      # comments
      {
        key = "gco";
        mode = ["n"];
        action = "o<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>";
        desc = "Add Comment Below";
      }
      {
        key = "gcO";
        mode = ["n"];
        action = "O<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>";
        desc = "Add Comment Above";
      }
      # Buffers
      {
        key = "<leader>bb";
        mode = ["n"];
        action = "<cmd>bnext<cr>";
        desc = "Next Buffer";
      }
      {
        key = "<leader>bB";
        mode = ["n"];
        action = "<cmd>bprevious<cr>";
        desc = "Previous Buffer";
      }
      # Tabs
      {
        key = "<leader><tab>l";
        mode = ["n"];
        action = "<cmd>tablast<cr>";
        desc = "Last Tab";
      }
      {
        key = "<leader><tab>o";
        mode = ["n"];
        action = "<cmd>tabonly<cr>";
        desc = "Close Other Tabs";
      }
      {
        key = "<leader><tab>f";
        mode = ["n"];
        action = "<cmd>tabfirst<cr>";
        desc = "First Tab";
      }
      {
        key = "<leader><tab><tab>";
        mode = ["n"];
        action = "<cmd>tabnew<cr>";
        desc = "New Tab";
      }
      {
        key = "<leader><tab>>";
        mode = ["n"];
        action = "<cmd>tabnext<cr>";
        desc = "Next Tab";
      }
      {
        key = "<leader><tab>d";
        mode = ["n"];
        action = "<cmd>tabclose<cr>";
        desc = "Close Tab";
      }
      {
        key = "<leader><tab><";
        mode = ["n"];
        action = "<cmd>tabprevious<cr>";
        desc = "Previous Tab";
      }
      # {
      #   key = "<leader>K";
      #   mode = ["n"];
      #   action = "<cmd>norm! K<cr>";
      #   desc = "Keywordprg";
      # }
      # {
      #   key = "<leader>ui";
      #   mode = ["n"];
      #   action = "vim.show_pos";
      #   desc = "Inspect Cursor Position";
      # }
      # {
      #   key = "j";
      #   mode = ["n" "x"];
      #   action = "v:count == 0 ? 'gj' : 'j'";
      #   desc = "Down";
      # }
      # {
      #   key = "<Down>";
      #   mode = ["n" "x"];
      #   action = "v:count == 0 ? 'gj' : 'j'";
      #   desc = "Down";
      # }
      # {
      #   key = "k";
      #   mode = ["n" "x"];
      #   action = "v:count == 0 ? 'gk' : 'k'";
      #   desc = "Up";
      # }
      # {
      #   key = "<Up>";
      #   mode = ["n" "x"];
      #   action = "v:count == 0 ? 'gk' : 'k'";
      #   desc = "Up";
      # }
      {
        key = "<leader>nh";
        mode = ["n"];
        action = ":nohl<CR>";
        desc = "Clear search highlights";
      }
    ];
  };
}
# -- Move to window using the <ctrl> hjkl keys
# map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
# map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
# map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
# map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })
#
# -- Resize window using <ctrl> arrow keys
# map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
# map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
# map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
# map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })
#
# -- Move Lines
# map("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
# map("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
# map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
# map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
# map("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
# map("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })
#
# -- buffers
# map("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
# map("n", "<leader>bd", function()
#   Snacks.bufdelete()
# end, { desc = "Delete Buffer" })
# map("n", "<leader>bo", function()
#   Snacks.bufdelete.other()
# end, { desc = "Delete Other Buffers" })
# map("n", "<leader>bD", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })
#
# -- Clear search and stop snippet on escape
# map({ "i", "n", "s" }, "<esc>", function()
#   vim.cmd("noh")
#   LazyVim.cmp.actions.snippet_stop()
#   return "<esc>"
# end, { expr = true, desc = "Escape and Clear hlsearch" })
#
# -- Clear search, diff update and redraw
# -- taken from runtime/lua/_editor.lua
# map(
#   "n",
#   "<leader>ur",
#   "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
#   { desc = "Redraw / Clear hlsearch / Diff Update" }
# )
#
# -- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
# map("n", "n", "'Nn'[v:searchforward].'zv'", { expr = true, desc = "Next Search Result" })
# map("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
# map("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
# map("n", "N", "'nN'[v:searchforward].'zv'", { expr = true, desc = "Prev Search Result" })
# map("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })
# map("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })
#
# -- Add undo break-points
# map("i", ",", ",<c-g>u")
# map("i", ".", ".<c-g>u")
# map("i", ";", ";<c-g>u")
#
# -- lazy
# map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })
#
# -- location list
# map("n", "<leader>xl", function()
#   local success, err = pcall(vim.fn.getloclist(0, { winid = 0 }).winid ~= 0 and vim.cmd.lclose or vim.cmd.lopen)
#   if not success and err then
#     vim.notify(err, vim.log.levels.ERROR)
#   end
# end, { desc = "Location List" })
#
# -- quickfix list
# map("n", "<leader>xq", function()
#   local success, err = pcall(vim.fn.getqflist({ winid = 0 }).winid ~= 0 and vim.cmd.cclose or vim.cmd.copen)
#   if not success and err then
#     vim.notify(err, vim.log.levels.ERROR)
#   end
# end, { desc = "Quickfix List" })
#
# map("n", "[q", vim.cmd.cprev, { desc = "Previous Quickfix" })
# map("n", "]q", vim.cmd.cnext, { desc = "Next Quickfix" })
#
# -- formatting
# map({ "n", "v" }, "<leader>cf", function()
#   LazyVim.format({ force = true })
# end, { desc = "Format" })
#
# -- diagnostic
# local diagnostic_goto = function(next, severity)
#   local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
#   severity = severity and vim.diagnostic.severity[severity] or nil
#   return function()
#     go({ severity = severity })
#   end
# end
# map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
# map("n", "]d", diagnostic_goto(true), { desc = "Next Diagnostic" })
# map("n", "[d", diagnostic_goto(false), { desc = "Prev Diagnostic" })
# map("n", "]e", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
# map("n", "[e", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
# map("n", "]w", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
# map("n", "[w", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })
#
# -- stylua: ignore start
#
# -- toggle options
# LazyVim.format.snacks_toggle():map("<leader>uf")
# LazyVim.format.snacks_toggle(true):map("<leader>uF")
#
# if vim.lsp.inlay_hint then
#   Snacks.toggle.inlay_hints():map("<leader>uh")
# end
#
# -- lazygit
# if vim.fn.executable("lazygit") == 1 then
#   map("n", "<leader>gg", function() Snacks.lazygit( { cwd = LazyVim.root.git() }) end, { desc = "Lazygit (Root Dir)" })
#   map("n", "<leader>gG", function() Snacks.lazygit() end, { desc = "Lazygit (cwd)" })
#   map("n", "<leader>gf", function() Snacks.picker.git_log_file() end, { desc = "Git Current File History" })
#   map("n", "<leader>gl", function() Snacks.picker.git_log({ cwd = LazyVim.root.git() }) end, { desc = "Git Log" })
#   map("n", "<leader>gL", function() Snacks.picker.git_log() end, { desc = "Git Log (cwd)" })
# end
#
# map("n", "<leader>gb", function() Snacks.picker.git_log_line() end, { desc = "Git Blame Line" })
# map({ "n", "x" }, "<leader>gB", function() Snacks.gitbrowse() end, { desc = "Git Browse (open)" })
# map({"n", "x" }, "<leader>gY", function()
#   Snacks.gitbrowse({ open = function(url) vim.fn.setreg("+", url) end, notify = false })
# end, { desc = "Git Browse (copy)" })
#
# map("n", "<leader>uI", function() vim.treesitter.inspect_tree() vim.api.nvim_input("I") end, { desc = "Inspect Tree" })
#
# -- LazyVim Changelog
# map("n", "<leader>L", function() LazyVim.news.changelog() end, { desc = "LazyVim Changelog" })
#
# -- floating terminal
# map("n", "<leader>fT", function() Snacks.terminal() end, { desc = "Terminal (cwd)" })
# map("n", "<leader>ft", function() Snacks.terminal(nil, { cwd = LazyVim.root() }) end, { desc = "Terminal (Root Dir)" })
# map("n", "<c-/>",      function() Snacks.terminal(nil, { cwd = LazyVim.root() }) end, { desc = "Terminal (Root Dir)" })
# map("n", "<c-_>",      function() Snacks.terminal(nil, { cwd = LazyVim.root() }) end, { desc = "which_key_ignore" })
#
# -- Terminal Mappings
# map("t", "<C-/>", "<cmd>close<cr>", { desc = "Hide Terminal" })
# map("t", "<c-_>", "<cmd>close<cr>", { desc = "which_key_ignore" })
#
#
# -- native snippets. only needed on < 0.11, as 0.11 creates these by default
# if vim.fn.has("nvim-0.11") == 0 then
#   map("s", "<Tab>", function()
#     return vim.snippet.active({ direction = 1 }) and "<cmd>lua vim.snippet.jump(1)<cr>" or "<Tab>"
#   end, { expr = true, desc = "Jump Next" })
#   map({ "i", "s" }, "<S-Tab>", function()
#     return vim.snippet.active({ direction = -1 }) and "<cmd>lua vim.snippet.jump(-1)<cr>" or "<S-Tab>"
#   end, { expr = true, desc = "Jump Previous" })
# end
#

