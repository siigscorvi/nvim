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
  ];

  lsps = with pkgs; [
    lua-language-server
    nixd
    nixfmt-classic
  ];
}
