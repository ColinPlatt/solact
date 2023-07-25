// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/solact.sol";

contract SelectorTest is Test {
    solact public implementation;

    function setUp() public {
        implementation = new solact();
    }

    function testConnectivity() public {
        emit log_string(implementation.startConnectivity());
    }

    function testSelector() public {
        emit log_bytes32(SelectorTest(this).testSelector.selector);
    }

}
