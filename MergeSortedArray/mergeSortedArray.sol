// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract MergeSortedArray{

    // [10,8,6] [9,7,5,4]
    function MergeArray(uint256[] memory arr1, uint256[] memory arr2) public pure returns (uint256[] memory){
        uint256[] memory result = new uint256[](arr1.length+arr2.length);
        uint256 i=0;
        uint256 j=0;
        uint256 n=0;
        while(i<arr1.length) {
            if(j<arr2.length) {
                while(j<arr2.length) {
                    if(arr1[i]>arr2[j]){
                        result[n]=arr1[i];
                        i++;
                        n++;
                        break;
                    }
                    else{
                        result[n]=arr2[j];
                        j++;
                        n++;
                    }
                }
            }
            else{
                result[n]=arr1[i];
                i++;
                n++;
            }
        }

        if(j<arr2.length) {
            while(j<arr2.length) {
                result[n]=arr2[j];
                n++;
                j++;
            }
        }

        return result;
    }
}