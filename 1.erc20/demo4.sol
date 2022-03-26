// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyDappToken is ERC20, Ownable {
    constructor() ERC20("MyDappToken", "MDTK") {
        _mint(msg.sender, 1000);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}



// 0x8D0CD152eDCE6D3468884AD1ade809ce6A02e53f  