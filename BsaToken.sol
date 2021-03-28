// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v4.0/contracts/token/ERC20/ERC20.sol";

contract BsaToken is ERC20 {
    /**
     * constructor
     *
     * Requirements:
     *
     * - `initialSupply` token initial supply
     * - `name` token name
     * - `symbol` token symbol
     */
    constructor(uint256 initialSupply, string memory name, string memory symbol) ERC20(name, symbol) {
        _mint(msg.sender, initialSupply);
    }
}
