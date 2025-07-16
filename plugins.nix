{ pkgs }:
# List all the plugins I need here
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

  # copilot-lua
  # blink-copilot

  trouble-nvim
  todo-comments-nvim

# code analysis
  nvim-lspconfig
  nvim-treesitter.withAllGrammars

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
  # copilot-lualine

  promise-async
  nvim-ufo

  nvim-colorizer-lua
# misc
  snacks-nvim


# latex
  vimtex

# markdown
  render-markdown-nvim

  ]
