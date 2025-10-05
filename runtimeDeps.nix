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

    # debugger
    lldb

    # lazygit
    lazygit

    # copilot
    nodejs-slim_latest

    # pdf viewer
    zathura
  ];

  lsps = with pkgs; [
    lua-language-server

    nixd
    nixfmt-classic

    ltex-ls-plus
    texlab
    texliveFull

    marksman

    clang-tools
    cmake-language-server

    bash-language-server

    basedpyright

    rust-analyzer
    rustfmt
  ];
}
