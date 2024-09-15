{...}:

let
  nixvim = import (builtins.fetchGit {
    url = "https://github.com/nix-community/nixvim";
  });
in

{
  imports = [
    nixvim.homeManagerModules.nixvim
    ./plugins
    ./settings.nix
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
  };
}

