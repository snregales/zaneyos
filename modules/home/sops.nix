{
  username,
  rootDir,
  inputs,
  ...
}: {
  imports = [
    inputs.sops-nix.homeManagerModules.sops
  ];

  sops = {
    defaultSopsFile = rootDir + /secrets.yaml;
    validateSopsFiles = false;

    age.keyFile = "/home/${username}/.config/sops/age/keys.txt";
    secrets = {
      "${username}/keys/ssh".path = "/home/${username}/.ssh/id_ed25519";
    };
  };
}
