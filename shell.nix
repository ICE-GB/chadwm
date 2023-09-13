
  {pkgs ? import <nixpkgs> {}}:
    pkgs.mkShell {
      nativeBuildInputs = with pkgs; [
        gnumake
        xorg.libX11.dev
        xorg.libXcursor.dev
        xorg.libXft
        xorg.libXinerama
        imlib2
        alejandra
      ];
    }
