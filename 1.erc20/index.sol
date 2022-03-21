// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract MyAdvoncedToken is ERC20 {
    constructor (string memory name, string memory symbol) ERC20(name, symbol){
        _mint(msg.sender, 100 * 10 ** uint(decimals()));
    }

    function decimals() public pure override returns (uint8){
        return 0;
    }
}