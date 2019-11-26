with import <nixpkgs> {};

{ build-idris-package,
  effects, lightyear, contrib, glew, libpng, pkg-config
}:
build-idris-package  {

  name = "sdl2";
  version = "5d15bec72c1204cd9f1d79f416d726cff5bcd87a";
  # This is the .ipkg file that should be built, defaults to the package name
  # In this case it should build `Yaml.ipkg` instead of `yaml.ipkg`
  # This is only necessary because the yaml packages ipkg file is
  # different from its package name here.
  ipkgName = "sdl2";
  # Idris dependencies to provide for the build
  idrisDeps = [ effects lightyear contrib ];
  extraBuildInputs = [ SDL2 SDL2_gfx pkg-config glew libpng ];
  src = ./.;

  meta = {
    description = "Idris GL lib";
  };
}
