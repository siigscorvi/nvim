{
  description = "My own Neovim flake";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    neovim = {
      url = "github:nix-community/neovim-nightly-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    telescope-luasnip-nvim = {
      url = "github:benfowler/telescope-luasnip.nvim";
      flake = false;
    };

  };

  outputs = { self, nixpkgs, neovim, telescope-luasnip-nvim }:
    let

      overlayFlakeInputs = final: prev: {
        vimPlugins = prev.vimPlugins // {

          telescope-luasnip-nvim =
            import ./packages/vimPlugins/telescope-luasnip-nvim.nix {
              src = telescope-luasnip-nvim;
              pkgs = prev;
            };

        };
      };

      overlays = [
        overlayFlakeInputs
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
