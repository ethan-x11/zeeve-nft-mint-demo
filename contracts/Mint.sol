//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Mint is ERC1155, Ownable {
    uint public totalSupply;

    constructor() ERC1155("http://rainbowkit-mint-nft-demo.vercel/nft.json") {}

    function mint() public {
        unchecked {
            ++totalSupply;
        }
        _mint(msg.sender, 1, 1, "");
    }
}

