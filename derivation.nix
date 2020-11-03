{ stdenv, rustPlatform, fetchFromGitHub, cmake, pkgconfig, sqlite, openssl }:

rustPlatform.buildRustPackage rec {
  name = "bip39-${version}";
  version = "0.1.0";
  src = fetchFromGitHub {
    "owner" = "monomadic";
    "repo" = "bip39-cli";
    "rev" = "cdf224a665df0885118d712e166607648e052e72";
    "sha256" = "0jszx3r4vd7bz8n8wnbsik467q2za8m0fplc8y7mhi6cn6jrab7l";
  };

  buildInputs = [ openssl pkgconfig ];

  checkPhase = "";
  cargoSha256 = "sha256:0mqf207zgprg1sw4cnw47d6ml6nb8nzkjfayy9q776ckj98qh971";

  meta = with stdenv.lib; {
    description = "BIP39 Cli Tool";
    homepage = "https://github.com/monomadic/bip39-cli";
    license = licenses.isc;
    maintainers = [ maintainers.tailhook ];
    platforms = platforms.all;
  };
}
