//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract StateVariables {
    // few things to keep in mind about
    // state variables
    // always arrive on top

    string public myState;
    uint256 public myNum;

    // string public defaultText = "hey default text";
    // uint256 public defaultNUm = 5;

    // bytes public defaultByte = "hey daulat";
    // bytes public defaultByteNew;

    // array
    // uint256[] public nyNumber;

    // updating using constructor
    // constructor(string memory _text, uint256 _num) {
    //     myState = _text;
    //     myNum = _num;
    // }

    // updating using function
    function update(string memory _text, uint256 _num) public {
        myState = _text;
        myNum = _num;
    }
}
