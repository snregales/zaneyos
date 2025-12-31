{
  pkgs,
  inputs,
  username,
  host,
  profile,
  rootDir,
  config,
  ...
}: let
  inherit (import (rootDir + /hosts/${host}/variables.nix)) gitUsername;
in {
  imports = [inputs.home-manager.nixosModules.home-manager];
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = false;
    backupFileExtension = "backup";
    extraSpecialArgs = {inherit inputs username host profile pkgs rootDir;};
    users.${username} = {
      imports = [./../home];
      home = {
        inherit username;
        homeDirectory = "/home/${username}";
        stateVersion = "23.11";
      };
    };
  };

  sops.secrets."${username}/passwords/session".neededForUsers = true;
  users = {
    mutableUsers = false;
    users.${username} = {
      isNormalUser = true;
      hashedPasswordFile = config.sops.secrets."${username}".path;
      description = "${gitUsername}";
      extraGroups = [
        "adbusers"
        "docker" #access to docker as non-root
        "libvirtd" #Virt manager/QEMU access
        "lp"
        "networkmanager"
        "scanner"
        "wheel" #sudo access
        "vboxusers" #Virtual Box
      ];
      shell = pkgs.zsh;
      openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIP764Zc3O5Y1QNMI+fq6SPdyENWLu3qWv/EVEwf4u4SI snregales@dell-xps-9640" # general
      ];
      ignoreShellProgramCheck = true;
    };
  };
  nix.settings.allowed-users = ["${username}"];
}
