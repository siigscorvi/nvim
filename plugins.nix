{ pkgs }:
# List all the plugins I need here
with pkgs.vimPlugins; [

# file navigation
  plenary-nvim # dependency for telescope
  telescope-nvim 
  telescope-fzf-native-nvim # fuzzy finder implementation for telescope


# styling
  gruvbox-nvim

]
