// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import "../node_modules/hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract MyEpicNFT is ERC721URIStorage{

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721 ("Lake house NFT", "LakeHouseNFT") {
        console.log("This is my Lake house NFT contract !");
      }
    
     // A function our user will hit to get their NFT.
  function makeAnEpicNFT() public {
    // Get the current tokenId, this starts at 0.
   uint256 newItemId = _tokenIds.current();

    // Actually mint the NFT to the sender using msg.sender.
   _safeMint(msg.sender, newItemId);

   // Set the NFTs data.
   _setTokenURI(newItemId, "https://jsonkeeper.com/b/TVDK");

   console.log("An NFT w/ ID %s has been minted to %s", newItemId, msg.sender);


   // Increment the counter for when the next NFT is minted.
   _tokenIds.increment();
 }
}