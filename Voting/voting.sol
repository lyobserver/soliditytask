// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Voting{
    mapping (string => uint256) private voteMaps;

    string[] private users;

    function setVote(string memory user) public {
        voteMaps[user]++;
        for(uint i=0; i<users.length; i++){
            if(keccak256(abi.encode(users[i])) == keccak256(abi.encode(user))){
                return;
            }
        }
        users.push(user);
    }

    function getVotes(string memory user) public view returns(uint256) {
        return voteMaps[user];
    }

    function resetVotes() public {
        for(uint i=0; i<users.length; i++) {
            voteMaps[users[i]]=0;
        }
    }
}