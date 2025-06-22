// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract FoxCoin is ERC20, Ownable {
    constructor(address initialOwner) ERC20("FoxCoin", "FOX") {
        _transferOwnership(initialOwner);
        _mint(initialOwner, 1000000000 * 10 ** decimals());
    }
}
