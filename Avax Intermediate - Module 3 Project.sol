// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract GemzToken is ERC20, Ownable {
    constructor(address initialOwner) ERC20("GEMZ", "GMZ") Ownable(initialOwner) {}

    //Only the owner can mint tokens
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    //Any user can burn their tokens
    function burn(uint256 amount) public {
        _burn(_msgSender(), amount);
    }
}
