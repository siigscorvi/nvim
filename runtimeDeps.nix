{ pkgs }:
{
  deps = with pkgs; [ 
    # telescope
    ripgrep
    fd
  ];
}
