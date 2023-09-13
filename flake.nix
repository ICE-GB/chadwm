{
  description = "chadwm";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
      in rec {
        packages = flake-utils.lib.flattenTree {
          dwm = pkgs.dwm.overrideAttrs (old: {
            src = pkgs.lib.cleanSource self;
          });
        };
        defaultPackage = packages.dwm;
        apps.default = flake-utils.lib.mkApp {
          drv = packages.dwm;
          exePath = "/bin/dwm";
        };
        devShells = {
          #run by `nix devlop` or `nix-shell`(legacy)
          default = import ./shell.nix {inherit pkgs;};
        };
      }
    );
}
