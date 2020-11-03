{ pkgs ? import <nixpkgs> { } }:
pkgs.rustPlatform.buildRustPackage rec {
  name = "bip39";
  src = ./.;
  checkPhase = "";
  cargoSha256 = "sha256:0mqf207zgprg1sw4cnw47d6ml6nb8nzkjfayy9q776ckj98qh971";
  buildInputs = with pkgs; [ openssl pkgconfig ];
  shellHook = "";
}
