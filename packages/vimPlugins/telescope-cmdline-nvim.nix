{ pkgs, src }:
pkgs.vimUtils.buildVimPlugin {
  name = "telescope-cmdline-nvim";
  inherit src;
  doCheck = false;
}
