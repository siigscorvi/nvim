{ pkgs }:
let

  # This will load all the files in the directories automatically
  customRC = import ../config { inherit pkgs; };
  plugins = import ../plugins.nix { inherit pkgs; };
  runtimeDeps = import ../runtimeDeps.nix { inherit pkgs; };

  # for each deps*X* variable I add, I need to add one of these here:
  rdeps       = pkgs.symlinkJoin { name = "neovim Runtime Dependencies"; paths = runtimeDeps.deps; };

  # This wraps the default neovim package with my extensions
  myNeovimUnwrapped = pkgs.wrapNeovim pkgs.neovim {
    configure = {
      inherit customRC;
      packages.all.start = plugins;
    };
  };

# This write the packages as an actual application
in 
  pkgs.writeShellApplication {
    name = "nvim";
    runtimeInputs = [ rdeps ];
    text = ''
      ${myNeovimUnwrapped}/bin/nvim "$@"
    '';
  }
