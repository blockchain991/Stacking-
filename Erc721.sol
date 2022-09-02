// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MintNFT is ERC721URIStorage,Ownable {
 
    uint256 public tokenId = 0;
    string public uri;
    

    constructor() ERC721("Mint NFT", "MNT") {}

       function setURI(string memory _uri) public
     {
        uri = _uri;
    }

    function _baseURI() internal view virtual override returns (string memory) {
        return uri;
    }


   

function mintNft(string memory _tokenURI) external returns (uint256) {
            tokenId++;
            _safeMint(msg.sender, (tokenId));
            _setTokenURI((tokenId), _tokenURI);
        return (tokenId);
    }


}