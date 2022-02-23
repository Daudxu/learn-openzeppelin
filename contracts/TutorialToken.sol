// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract TutorialToken is ERC20 {
    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

    constructor() ERC20("Reward", "RWD") {}

    function _mintMinerReward() internal {
        _mint(block.coinbase, 1000);
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 value
    ) internal virtual override {
        if (!(from == address(0) && to == block.coinbase)) {
            _mintMinerReward();
        }
        super._beforeTokenTransfer(from, to, value);
    }
}
