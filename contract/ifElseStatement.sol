//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract IfElse {
    uint256 public myNum = 5;
    string public myString;

    function get(uint256 num) public {
        if (num == 5) {
            myString = "hey the value of num is 5";
        } else {
            myString = "not 5";
        }
    }

    // if else ladder
    // if(){
    //     //statement
    // }
    // else if (){
    //     // statement
    // }
    // else {
    //     // statement
    // }

    // short hand
    // teneary operator
    function shortHand(uint256 _num) public returns (string memory) {
        return _num == 5 ? myString = "its 5" : myString = "not 5";
    }
}
