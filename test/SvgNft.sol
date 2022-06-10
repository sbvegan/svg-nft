// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/SvgNft.sol";

contract TestSvgNft is Test {
    SvgNft svgNft;
    string svgURI =
        "data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjAwIDIwMCIgd2lkdGg9IjIwMCIgIGhlaWdodD0iMjAwIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgogIDxjaXJjbGUgY3g9IjEwMCIgY3k9IjEwMCIgZmlsbD0iZ3JlZW4iIHI9Ijc4IiAvPgo8L3N2Zz4=";

    function setUp() public {
        svgNft = new SvgNft(svgURI);
    }

    function testConstructor() public {
        string memory svg = svgNft.getSVG();
        assertEq(svg, svgURI);
    }
}
