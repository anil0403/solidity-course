//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// A function is basically a group of code that can can be reused anywhere in the program, which generally saves the excessive use of memory and decreases the runtieme of the program.
// types of function :
// 1. Declaring Function
// 2. Non Declaring FUcntion

// function function_name(parameter_list) scope returns(return_type){
//block of code
// }

// declarng a function
// 1. Modifying state variable
// 2. Emitting events
// 3. Creting other contracts
// 4. using self-destruct
// 5. sending ether via calls
// 6. marked pure or view
// 7. assembly certain opcodes
// 8. Using low-level calls

contract LearnFunction {
    //basic example
    // uint256 public hey; //state variable
    uint256 hey; //state variable

    //get data with the help of function
    //public -> scope
    // view ->i want to look at the state variable
    function getInfo() public view returns (uint256) {
        return hey;
    }

    function updataData(uint256 _hey) public {
        hey = _hey;
    }

    function get(uint256 _a, uint256 _b) public returns (uint256) {
        uint256 newNumber = _a + _b;
        hey = newNumber;
        return hey;
    }
}
