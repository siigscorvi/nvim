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
# code analysis
    (nvim-treesitter.withPlugins (treesitter))

# file navigation
    plenary-nvim # dependency for telescope
    telescope-nvim 
    telescope-fzf-native-nvim # fuzzy finder implementation for telescope


# styling
    gruvbox-nvim
    nvim-web-devicons


  ]
