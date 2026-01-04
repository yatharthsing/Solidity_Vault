
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SavingsBank{
    address public owner;
    constructor(){
        owner=msg.sender;                                                    //to establish ownership.
    }
    function deposit() public payable{

    }
    function getBalance() public view returns (uint){
        return address(this).balance;
    }
    function withdraw(uint _amount) public {
        require(msg.sender == owner, "Not the owner");                        // to ensure that the withdrawer is the owner.
        require(_amount <= address(this).balance, "Insufficient balance");    //to ensure that their is sufficent balance to withdraw.

        payable(owner).transfer(_amount);
    }
}

