// SPDX-License-Identifier: MIT

// Requirements:

// Create an ERC20 token
// Only contract owner should be able to mint tokens
// Any user can burn tokens
// Any user can transfer tokens

pragma solidity ^0.8.13;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20{
    address payable public owner;
    
    constructor(string memory name, string memory symbol) ERC20(name, symbol){
        owner = payable(msg.sender);
        _mint(msg.sender,  100 * 10**uint(decimals())); 
    }

    // for minting tokens
    function mint(address recipient, uint256 amount) external {
        require(msg.sender == owner, "You are not the owner of this contract!");
        _mint(recipient,amount);
    }

    // for burning tokens
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    // to allow transfer directly from the sender
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        require(amount <= 100, "Maximum transfer amount is 100!");
        return super.transfer(recipient, amount);
    }

    // to allow transfers made by a third-party
    function transferFrom(address sender, address recipient, uint256 amount) public override returns (bool) {
        require(amount <= 100, "Maximum transfer amount is 100!");
        return super.transferFrom(sender, recipient, amount);
    }
}
