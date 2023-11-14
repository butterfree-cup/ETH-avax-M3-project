# ETH-AVAX Project: Create and Mint Token
## Description
This smart contract, MyToken, demonstrates the creation of an ERC20 token. It follows the standard ERC20 interface, allowing users to mint, burn, and transfer tokens. This contract includes a limitation which prevents any other user from minting a token other than the contract owner. The tool used to test and run this contract was Remix - Ethereum IDE.

## Feature Overview
1. **Minting Tokens:**
    - Only the contract owner can mint new tokens.
    - Use the mint function by providing a recipient address and the amount of tokens to be minted.

2. **Burning Tokens:**
    - Any user can burn their own tokens.
    - Use the burn function by specifying the amount of tokens to be burned.

4. **Transferring Tokens:**
    - Users can transfer tokens to other addresses.
    - The maximum transfer amount is restricted to 100 tokens to prevent large transfers.
    - Transfer directly from the sender using the transfer function.
    - Allow transfers made by a third-party using the transferFrom function.

## Getting Started
To deploy and interact with MyToken:

1. Deploy the contract on the Ethereum blockchain.
2. Mint initial tokens using the mint function, accessible only to the contract owner.
3. Burn tokens using the burn function.
4. Transfer tokens using the 'transfer' and 'transferFrom' functions.

Note: OpenZeppelin Contracts Library version 4.0.0 was used in this contract.

## Authors
Deanne Joy R. Santos
