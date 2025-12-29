_: {
  programs.nvf.settings.vim.globals = {
    mapleader = " ";
    maplocalleader = " ";
  };
  programs.nvf.settings.vim.options = {
    number = true;
    relativenumber = true;

    tabstop = 2;
    softtabstop = 2;
    shiftwidth = 2;
    expandtab = true;
    autoindent = true;
    smartindent = true;
    list = true;
    listchars = "tab:» ,trail:·,nbsp:␣";
    wrap = true;
    breakindent = true;
    colorcolumn = "100";

    swapfile = false;
    backup = false;
    undofile = true;

    inccommand = "split";
    incsearch = true;
    ignorecase = true;
    smartcase = true;

    termguicolors = true;
    background = "dark";
    scrolloff = 10;
    signcolumn = "yes";

    backspace = "indent,eol,start";

    splitright = true;
    splitbelow = true;

    updatetime = 250;
    timeoutlen = 300;
    hlsearch = true;

    cursorline = true;
    guicursor = "c:block-blinkon1,i:ver20-blinkon1,v:hor20";
    mouse = "a";

    showmode = false;
    confirm = true;
  };
}
