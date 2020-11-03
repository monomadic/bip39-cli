# BIP39-Cli

Simple cli wrapper for the BIP39 library. Generates bitcoin mnemonics on the command line, I kept the code one simple file so that it is easy to audit (well, not the deps, but you get the idea).

I find this useful as you can carry the binary across to an airgapped pc to generate mnemonics.

## Installation

### Cargo
``` shell
cargo install --path .
```

### NixOS

You can install into your current environment directly with `nix-env`:
``` shell
nix-env -if default.nix
```

Or add this to your `configuration.nix` (no need to clone this repo):
``` nix
{
  nixpkgs.config.packageOverrides = pkgs: {
    bip39 = pkgs.callPackage (import
      (builtins.fetchGit { url = "https://github.com/monomadic/bip39-cli"; }))
      { };
  };
}
```
