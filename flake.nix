{
  description = "Simple flake for Sonnix QT Quest Soft Player fork";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
      ];
      perSystem =
        {
          pkgs,
          ...
        }:
        let
          inherit (pkgs.libsForQt5) callPackage;

          qqsp = callPackage ./qqsp.nix { };
        in
        {
          packages = {
            default = qqsp;
            inherit qqsp;
          };
        };
    };
}
