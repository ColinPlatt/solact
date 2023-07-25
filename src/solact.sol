// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Connectivity} from "./types/connectivity.sol";

contract solact {
    function startConnectivity() public view returns (string memory) {
        Connectivity memory newConnectivity;
        newConnectivity.initializeProvider();
        return newConnectivity.read();
    }
}
