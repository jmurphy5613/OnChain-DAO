// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

import "@openzeppelin/contracts/governance/TimelockController.sol";

//waiting for the new vote to be added

contract TimeLock is TimelockController {
    uint minDelay; //time before execution

    constructor(
        uint _minDelay, 
        address[] memory proposers, 
        address[] memory executors
    ) TimelockController(minDelay, proposers, executors) {}
}