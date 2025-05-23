{ pkgs }:
{
  deps = with pkgs; [
    # telescope
    ripgrep
    fd

    # snacks.images
    imagemagick
    ghostscript
    mermaid-cli

    # lazygit
    lazygit

    # copilot
    nodejs-slim_latest
  ];

  lsps = with pkgs; [
    lua-language-server

    nixd
    nixfmt-classic

    ltex-ls-plus
    texlab
    texliveFull
    zathura

    basedpyright
  ];
}
