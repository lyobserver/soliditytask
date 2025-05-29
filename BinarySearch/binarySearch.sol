// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract BinarySearch{
    //[1,2,3,4,4,6,7,8,9,10]
    function binarySearch(uint256[] memory arr, uint256 key)public pure returns(int256) {
        uint256 low=0;
        uint256 high=arr.length-1;
        uint256 mid=0;
        while (low<=high){
            mid = (low+high)/2;
            if(arr[mid]==key){
                return int256(mid);
            }
            if(arr[mid]<key) {
                low=mid+1;
            }
            if(arr[mid]>key) {
                high=mid-1;
            }
        }
        return -1;
    }
}