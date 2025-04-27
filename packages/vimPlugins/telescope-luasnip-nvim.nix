{ pkgs, src }:
pkgs.vimUtils.buildVimPlugin {
  name = "telescope-luasnip-nvim";
  inherit src;
}
