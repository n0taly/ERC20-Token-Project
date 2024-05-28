/// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SonnyAngelToken is ERC20 {
    address public owner;

    constructor(uint256 initialSupply) ERC20("SonnyAngelToken", "SAT") {
        _mint(msg.sender, initialSupply);
        owner = msg.sender;
    }

    //Function to burn tokens
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    // Function to mint new tokens
    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }

    // Modifier to check if the caller is the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can execute this function");
        _;
    }
}