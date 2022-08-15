use bip39::{Mnemonic, Language};

fn main() {
    println!("BIP39 Mnemonic");
    println!("==============\n");

		let mnemonic = Mnemonic::generate_in(Language::English, 12).unwrap();

    println!("Mnemonic Phrase:\n{}\n", mnemonic);
}
