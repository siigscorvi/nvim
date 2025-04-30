# My neovim configuration flake
The flake setup is mostly stolem from [this guide](https://primamateria.github.io/blog/neovim-nix/).

You can try my config by running:
```bash
nix run github:siigscorvi/nvim -- 
```

# Neovim configuration
## Goals
- easy file navigation
- language servers
- syntax highlighting, code analysis, style linting
- completion for lsp, snippets, ...
- formatting
- git integration (at least highlighting of changes)
- tmux compatibility for my setup
- floating cmdline and floating notifications

### Language specific
#### Markdown
- inline preview and in browser
- grammar lsp for english and german
- snippets
- table editing
- images
- surround for text style

## Progress
- [x] init.lua for basic nvim options
- [x] keymaps.lua for my keymaps as well as plugin specific keymaps (for plugins whicht otherwise wouldn't need their own file)
- [ ] whichkey.nvim 
- [ ] lazyloading...?

completion and snippets
- [x] blink.cmp
    - [x config
- [x] recipes:
    - [x] nvim-web-devicons + lspkind as icons
    - [x] Select Nth item from list
    - [x] first letter capitalization on buffer source
- [x] [additional sources for blink](https://cmp.saghen.dev/configuration/sources#community-sources)
    - [x] emoji
    - [x] nerdfont
    - [x] git conventional commits
    - [ ] snippets
    - [ ] lsp
- [ ] LuaSnip
- [ ] create Luasnippets

editing helpers
- [x] git integration
- [ ] trouble.nvim
- [ ] indent guides
- [ ] easy, good looking folds
- [ ] autopairs / surround
- [ ] autoformating

code analysis, language servers and linters
- [x] treesitter for all supported use cases
- [ ] lsp
- [ ] linter
- [ ] nix
- [ ] lua
- [ ] LaTeX
- [ ] grammar
- [ ] C and C++
- [ ] bash
- [ ] Python and Jupyter
 
navigation
- [x] tmux compatibility

easy file navigation and manipulation
- [x] file browser to create, move, copy, rename, delete files
- [x] telescope integration
- [x] telescope extensions
- [ ] easy moving when editing multiple files
- [ ]

Styling
- [x] gruvbox colorscheme
- [x] floating commandline
- [x] good looking messages / notifications
- [ ] greeter?
- [ ] bufferline

## Bookmarks for future plugins
- telescope-manix
- yanky.nvim (with telescope integr.)
- cheatsheet-nvim
- telescope-menu.nvim
- blink-copilot for copilot or supermaven with blink-cmp-supermaven?
- cmp-pandoc-references pandoc blink source
