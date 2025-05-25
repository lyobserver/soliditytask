// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract RomanToInt{

    mapping (string=>uint256) private romanTable;
    constructor() {
        romanTable["I"] = 1;
        romanTable["V"] = 5;
        romanTable["X"] = 10;
        romanTable["L"] = 50;
        romanTable["C"] = 100;
        romanTable["D"] = 500;
        romanTable["M"] = 1000;
    }

    function RomanToInt1(string memory str) public view returns(uint256){
        bytes memory romanBytes = bytes(str);
        uint256 result = 0;
        for(uint i=0; i<romanBytes.length; i++) {
            bytes memory romanKey = new bytes(1);
            romanKey[0] = romanBytes[i];
            string memory key = string(romanKey);
            uint256 value = romanTable[key];
            if(i < romanBytes.length-1) {
                bytes memory romanKeyNext = new bytes(1);
                romanKeyNext[0] = romanBytes[i+1];
                string memory nextkey = string(romanKeyNext);
                if(value < romanTable[nextkey]) {
                    result -= value;
                }
                else{
                    result += value;
                }
            } else {
                result += value;
            }
        }
        return result;
    }
}