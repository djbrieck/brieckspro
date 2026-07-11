let
  pkgs = import (builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/5310815991865e35a06962d88ad8f7ddf605c414.tar.gz";
  }) {};
in
pkgs.mkShell {
  buildInputs = [ pkgs.hugo ];
}