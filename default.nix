with import <nixpkgs> {};
{
  idris-sdl2 = idrisPackages.callPackage ./sdl2.nix {};
}
