{ pkgs }:
# List all the plugins I need here
let
  treesitter = p: with p; [
      asm
      bash
      bibtex
      c
      cmake
      comment
      cpp
      css
      csv
      diff
      dockerfile
      doxygen
      git_config
      git_rebase
      gitattributes
      gitcommit
      gitignore
      go
      gomod
      gotmpl
      gosum
      gowork
      html
      http
      json
      latex
      lua
      luadoc
      luap
      make
      markdown
      markdown_inline
      nix
      printf
      python
      regex
      requirements
      sql
      ssh_config
      tmux
      toml
      vim
      vimdoc
      xml
      yaml
    ];
in
  with pkgs.vimPlugins; [
# debugging

# editing support
    blink-cmp
    blink-emoji-nvim
    blink-nerdfont-nvim
    blink-cmp-conventional-commits

    mini-ai
    mini-pairs
    mini-splitjoin
    mini-surround

    undotree

    lazygit-nvim
    gitsigns-nvim

    copilot-lua
    blink-copilot

    trouble-nvim
    todo-comments-nvim

# code analysis
    nvim-lspconfig
    (nvim-treesitter.withPlugins treesitter)

    ltex_extra-nvim


# navigation
    plenary-nvim # dependency for telescope
    telescope-nvim
    telescope-fzf-native-nvim # fuzzy finder implementation for telescope
    telescope-file-browser-nvim
    # telescope-lua-snip-nvim # waiting for luasnip
    mini-bufremove
    harpoon2

    tmux-nvim


# styling
    gruvbox-nvim

    nvim-web-devicons
    lspkind-nvim

    which-key-nvim

    nui-nvim
    nvim-notify
    noice-nvim

    mini-cursorword
    mini-indentscope
    mini-trailspace

    lualine-nvim
    copilot-lualine

    promise-async
    nvim-ufo

# misc
    snacks-nvim


# latex
    vimtex

  ]
