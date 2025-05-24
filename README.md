[comment]: <> "LTeX: enabled=false"
# My Neovim configuration flake
The flake setup is mostly stolen from [this guide](https://primamateria.github.io/blog/neovim-nix/).

You can try my config by running:
```bash
nix run github:siigscorvi/nvim --
```

# Neovim configuration
## Goals
- easy file navigation
- language servers
- syntax highlighting, code analysis, style linting
- completion for LSP, snippets, etc.
- formatting
- git integration (at least highlighting of changes)
- tmux compatibility for my setup
- floating cmdline and floating notifications

### Language specific
#### Markdown
- inline preview and in browser
- grammar LSP for English and German
- snippets
- table editing
- [x] images
- surround for text style

## Progress
- [x] init.lua for basic nvim options
- [x] keymaps.lua for my keymaps as well as plugin specific keymaps (for plugins which otherwise wouldn't need their own file)
- [x] whichkey.nvim
- [ ] lazyloading...?
- [x] snacks
- [x] mini

completion and snippets
- [x] blink.cmp
- [x] recipes:
    - [x] nvim-web-devicons + lspkind as icons
    - [x] Select Nth item from list
    - [x] first letter capitalization on buffer source
- [x] [additional sources for blink](https://cmp.saghen.dev/configuration/sources#community-sources)
    - [x] emoji
    - [x] nerdfont
    - [x] git conventional commits
    - [ ] snippets
    - [x] lsp
- [x] copilot

editing helpers
- [x] git integration with gitsigns and lazygit
- [x] undotree
- [x] trouble.nvim
- [x] indent guides
- [x] easy, good-looking folds
- [x] autopairs / surround
- [x] comments highlighting (maybe this is available in trouble..?)

- [ ] show colors in buffer

code analysis, language servers and linters
- [x] treesitter for all supported use cases

| language             | lsp | formatter | linter? | snippets |
| ---                  | --- | ---       | ---     | ---      |
| nix                  | [x] | [x]       | [ ]     | [ ]      |
| lua                  | [x] | [x]       | [ ]     | [ ]      |
| LaTeX                | [x] | [ ]       | [ ]     | [ ]      |
| markdown             | [ ] | [ ]       | [ ]     | [ ]      |
| grammar              | [x] | [ ]       | [ ]     | [ ]      |
| C and C++            | [ ] | [ ]       | [ ]     | [ ]      |
| bash                 | [ ] | [ ]       | [ ]     | [ ]      |
| Python and Jupyter   | [x] | [ ]       | [ ]     | [ ]      |

Navigation
- [x] tmux compatibility

Easy file navigation and manipulation
- [x] file browser to create, move, copy, rename, delete files
- [x] telescope integration
- [x] telescope extensions
- [x] easy moving when editing multiple files

Styling
- [x] gruvbox colorscheme
- [x] floating commandline
- [x] good looking messages / notifications
- [ ] smearcursor
- [ ] greeter...?
- [x] lualine

## Bookmarks for future plugins
- telescope-manix
- yanky.nvim (with telescope integr.)
- cheatsheet-nvim
- telescope-menu.nvim
- blink-copilot for copilot or supermaven with blink-cmp-supermaven?
- cmp-pandoc-references pandoc blink source
