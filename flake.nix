{
  description = "My own Neovim flake";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    neovim = {
      url = "github:nix-community/neovim-nightly-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, neovim }:
    let
      overlays = [
        neovim.overlays.default 
        (final: prev: {
          myNeovim = import ./packages/myNeovim.nix { pkgs = final; };
          })
      ];

      pkgs = import nixpkgs {
        system = "x86_64-linux";
        inherit overlays;
      };

    in {
      overlays.default = overlays;

      packages.x86_64-linux.default = pkgs.myNeovim;
      apps.x86_64-linux.default = {
        type = "app";
        program = "${pkgs.myNeovim}/bin/nvim";
      };
    };
}
