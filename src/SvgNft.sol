// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "openzeppelin-contracts/token/ERC721/ERC721.sol";

contract SvgNft is ERC721 {
    uint256 private s_tokenCounter;
    string private s_URI;

    constructor(string memory _URI) ERC721("SVG NFT", "SVG") {
        s_tokenCounter = 0;
        s_URI = _URI;
    }

    function _baseURI() internal pure override returns (string memory) {
        return "data:application/json;base64,";
    }

    // TODO: tokenURI

    function getSVG() public view returns (string memory) {
        return s_URI;
    }
}
