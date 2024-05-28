SonnyAngelToken

Overview

SonnyAngelToken is an ERC20-compliant token built on the Ethereum blockchain using the OpenZeppelin library. This token implementation includes basic ERC20 functionalities along with additional features for minting and burning tokens. The contract also restricts certain functionalities to the contract owner.

Features
ERC20 Compliance: Standard ERC20 token functionalities.


Minting: The contract owner can mint new tokens to any specified address.


Burning: Any user can burn their own tokens to reduce the total supply.


Ownership: Certain functions are restricted to the contract owner.


Contract Details


Token Name: SonnyAngelToken

Token Symbol: SAT

Decimals: 18 (default for ERC20 tokens)

Initial Supply: Specified during contract deployment.


Functions:



Constructor:

constructor(uint256 initialSupply) ERC20("SonnyAngelToken", "SAT")

Initializes the token with the specified initial supply, assigns the initial supply to the deployer's address, and sets the deployer as the owner.

Mint:

function mint(address account, uint256 amount) public onlyOwner

Mints new tokens to the specified account. Only the contract owner can call this function. Requires the recipient's address and the amount to be minted.

Burn:

function burn(uint256 amount) public

Burns the specified amount of tokens from the caller's balance. Requires the amount to be burned.

onlyOwner Modifier:

modifier onlyOwner()

Restricts access to certain functions to the contract owner. Displays an error message "Only the owner can execute this function" if called by a non-owner.

Usage:

Deploying the Contract

To deploy the contract, you need to provide an initial supply of tokens. The deployer's address will receive the entire initial supply.



Interacting with the Contract:



Minting Tokens:

Only the owner can mint new tokens.
Call the mint function with the recipient's address and the amount to be minted.

Example:
mint(0xRecipientAddress, 1000);


Burning Tokens:

Any user can burn their own tokens.
Call the burn function with the amount to be burned.

Example:

burn(500);

Example
Here’s an example of how to deploy and interact with the contract using Remix IDE:

Deploy:

Set the initial supply in the constructor.
Deploy the contract.


Mint Tokens:

As the owner, call the mint function to mint tokens to a specified address.


Burn Tokens:

Any user can call the burn function to burn their own tokens.
