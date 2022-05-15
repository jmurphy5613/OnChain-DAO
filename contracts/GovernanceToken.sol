// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";

contract GovernanceToken is ERC20Votes {
    uint256 public maxSupply;

    constructor() ERC20("Gif Governance Token", "GGT") ERC20Permit("Gif Governance Token") {
        maxSupply = 1000000; //1,000,000
        _mint(msg.sender, maxSupply);
    }

    // The functions below are overrides required by Solidity.


    //ensures that the snapshots are taken before the function is called
    function _afterTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal override(ERC20Votes) {
        super._afterTokenTransfer(from, to, amount);
    }

    function _mint(address to, uint256 amount) internal override(ERC20Votes) {
        super._mint(to, amount);
    }

    function _burn(address account, uint256 amount) internal override(ERC20Votes) {
        super._burn(account, amount);
    }
}