{
  pkgs,
  lib,
  ...
}: {
  programs.zellij = {
    package = pkgs.zellij;
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = false;
    settings = {
      simplified_ui = true;
      default_layout = "compact";
      theme = "tokyo-night-storm";
      copy_command = "wl-copy";
    };
    layouts = {
      rust-workspace = let
        pane = {
          name,
          command,
          kwargs,
        }: let
          inherit (lib) concatMapAttrsStringSep;
          extras = concatMapAttrsStringSep "\n  " (name: value: "${name} ${value}") kwargs;
        in ''
          pane name="${name}" command="zsh" {
            args "-ic" "direnv exec . nix develop --command ${command}"
            ${extras}
          }
        '';
        editor = pane {
          name = "editor";
          command = "nvim .";
          kwargs = {
            size = ''"80%"'';
            focus = "true";
          };
        };
        bacon = pane {
          name = "bacon";
          command = "bacon";
          kwargs = {
            size = ''"20%"'';
          };
        };
        lazygit = pane {
          name = "lazygit";
          command = "lazygit";
          kwargs = {
            width = ''"30%"'';
            height = ''"50%"'';
          };
        };
      in ''
        layout  {
          tab name="rust workspace" hide_floating_panes=true{
            pane split_direction="vertical" {
              ${editor}
              ${bacon}
            }
            floating_panes {
              ${lazygit}
            }
          }
        }
      '';
    };
  };
}
