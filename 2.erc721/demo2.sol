// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract NFT is ERC721 {
  using Counters for Counters.Counter;

  // Constants
  uint256 public constant TOTAL_SUPPLY = 10_000;

  Counters.Counter private currentTokenId;

  /// @dev Base token URI used as a prefix by tokenURI().
  string public baseTokenURI;

  constructor() ERC721("NFTTutorial", "NFT") {
    baseTokenURI = "";
  }

  function mintTo(address recipient) public returns (uint256) {
    uint256 tokenId = currentTokenId.current();
    require(tokenId < TOTAL_SUPPLY, "Max supply reached");
    
    currentTokenId.increment();
    uint256 newItemId = currentTokenId.current();
    _safeMint(recipient, newItemId);
    return newItemId;
  }

  /// @dev Returns an URI for a given token ID
  function _baseURI() internal view virtual override returns (string memory) {
    return baseTokenURI;
  }

  /// @dev Sets the base token URI prefix.
  function setBaseTokenURI(string memory _baseTokenURI) public {
    baseTokenURI = _baseTokenURI;
  }
}