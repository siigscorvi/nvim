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
}
