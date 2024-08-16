# Token Smart Contract
This is a simple ERC-20 compatible token smart contract written in Solidity.

 ## Overview
The Mod1 token contract is a basic implementation of the ERC-20 standard with additional functionalities for minting and burning tokens. The contract includes the following features:

* Name: The name of the token.
* Symbol: The symbol or ticker of the token.
* Decimals: The number of decimals used to display the token. Typically set to 18.
* Total Supply: The total supply of tokens initially minted.
* Balance Of: A mapping to keep track of the balance of each address.
* Additionally, the contract includes two events:

* Mint: Triggered when new tokens are minted.
* Burn: Triggered when tokens are burned.
