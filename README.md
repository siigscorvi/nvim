# My neovim configuration flake
The flake setup is mostly stolem from [this guide](https://primamateria.github.io/blog/neovim-nix/).

You can try my config by running:
```bash
nix run github:siigscorvi/nvim -- 
```

# Neovim configuration
## Goals
- easy file navigation
- syntax highlighting, code analysis, style linting
- language servers
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
- [x] treesitter for all supported use cases
- [ ] git integration
- [ ] tmux compatibility

easy file navigation and manipulation
- [x] file browser to create, move, copy, rename, delete files
- [x] telescope integration
- [x] telescope extensions
- [ ] easy moving when editing multiple files
- [ ] easy, good looking folds
- [ ]

Styling
- [x] gruvbox colorscheme
- [x] floating commandline
- [x] good looking messages
- [ ] 

- [ ] lsp
- [ ] linter

- [ ] nix
- [ ] lua
- [ ] LaTeX
- [ ] C and C++
- [ ] bash
- [ ] Python and Jupyter


## Bookmarks for future plugins
- telescope-manix
- yanky.nvim (with telescope integr.)
- cheatsheet-nvim
- telescope-menu.nvim

