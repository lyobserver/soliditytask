// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract ReverseString{

    function Reverse(string memory str) public pure returns (string memory) {
        bytes memory strBytes = bytes(str);
        bytes memory result = new bytes(strBytes.length);
        for(uint i=0; i<strBytes.length; i++) {
            result[i] = strBytes[strBytes.length-i-1];
        }
        return string(result);
    }
}