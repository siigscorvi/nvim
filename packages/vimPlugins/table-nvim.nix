{ pkgs, src }:
pkgs.vimUtils.buildVimPlugin {
  name = "table-nvim";
  inherit src;
}
