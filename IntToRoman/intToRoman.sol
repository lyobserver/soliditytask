// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract NumberToRoman{
    uint256[] private values=[1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
    string[] private symbols=["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"];
    
    function IntToRoman(uint256 num) public view returns(string memory) {
        string memory result;
        for(uint256 i=0; i<values.length; i++) {
            while (num>=values[i]) {
                result = string.concat(result,symbols[i]);
                num -= values[i];
            }
        }
        return result;
    }
}