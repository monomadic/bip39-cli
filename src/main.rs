use bip39::{Mnemonic, MnemonicType, Language, Seed};

fn main() {
    use bip39::{Mnemonic, MnemonicType, Language, Seed};

    /// create a new randomly generated mnemonic phrase
    let mnemonic = Mnemonic::new(MnemonicType::Words12, Language::English);
    
    /// get the phrase
    let phrase: &str = mnemonic.phrase();
    println!("phrase: {}", phrase);
    
    /// get the HD wallet seed
    let seed = Seed::new(&mnemonic, "");
    
    // get the HD wallet seed as raw bytes
    let seed_bytes: &[u8] = seed.as_bytes();
    
    // print the HD wallet seed as a hex string
    println!("{:X}", seed);
}
