# BIP39-cli

Simple cli wrapper for the BIP39 library. Generates bitcoin mnemonics on the command line, I kept the code one simple file so that it is easy to audit (well, not the deps, but you get the idea).

I find this useful as you can carry the binary across to an airgapped pc to generate mnemonics.

``` bash
~> bip39
BIP39 Mnemonic
==============

Mnemonic Phrase:
trim quick six moon great heavy among dish once warm notice pattern

Seed (Private Key):
0xDD616F947614B4F501161D6128C57921AA34DDAC41C54DD728270F925BB65273D3F3A8A7E1238D1623251AA54AC841ED15D9E83F7B282A5445135B39D6D5E17
```

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
