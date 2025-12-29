{inputs, ...}: {
  imports = [
    inputs.nvf.homeManagerModules.default
    ./configs
    ./plugins
  ];

  programs = {
    nvf = {
      enable = true;
      enableManpages = true;
    };
    zsh.shellAliases = {
      v = "nvim";
      vi = "nvim";
      vim = "nvim";
      "v." = "nvim .";
      "vi." = "nvim .";
      "vim." = "nvim .";
      "nvim." = "nvim .";
      vf = "pushd $NH_FLAKE && nvim .; popd";
    };
  };
}
