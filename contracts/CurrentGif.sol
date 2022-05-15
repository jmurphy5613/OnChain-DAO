// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract CurrentGif is Ownable {
    string public currentGif;

    //setter
    function setGif(string memory _gif) public onlyOwner {
        currentGif = _gif;
    }

    //getter
    function getGif() public view returns (string memory) {
        return currentGif;
    }
}