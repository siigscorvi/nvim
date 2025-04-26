# My neovim configuration flake
The flake setup is mostly stolem from [this guide](https://primamateria.github.io/blog/neovim-nix/).

You can try my config by running:
```bash
nix run github:siigscorvi/nvim -- 
```

# Neovim configuration
## Goals
- easy file navigation
- git integration (at least highlighting of changes)
- tmux compatibility for my setup
- floating cmdline


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
- [x] keymaps.lua for my keymaps as well as plugin specific keys, which otherwise wouldn't need a file
- [x] gruvbox colorscheme
- [ ] git integration

easy file navigation and manipulation
- [ ] file browser to create, move, copy, rename, delete files
- [x] telescope integration
- [ ] telescope extensions
- [ ] easy moving when editing multiple files
- [ ] easy, good looking folds
- [ ]

- [ ] lsp
- [ ] linter

- [ ] nix
- [ ] lua
- [ ] LaTeX
- [ ] C and C++
- [ ] bash
- [ ] Python and Jupyter

