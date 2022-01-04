{ lib, tree, ... }: with lib; let
  wrapImports = imports: mapAttrs
    (_: paths: { config, ... }: {
      config.home-manager.users.kat = {
        imports = singleton paths;
      };
    })
    imports;
  dirImports = wrapImports tree.prev;
  serviceImports = wrapImports tree.prev.services;
in
dirImports // {
  base = {
    imports = [
      dirImports.base
      tree.prev.nixos
    ];
  };
  server = { };
  guiX11Full = {
    imports = with dirImports; [
      gui
      i3
      dev
      media
      personal
    ];
  };
  guiFull = {
    imports = with dirImports; [
      gui
      sway
      dev
      media
      personal
    ];
  };
  services = serviceImports;
}
