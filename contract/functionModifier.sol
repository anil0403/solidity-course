//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// notes:
// modifier are the code that can be run before and after function call
// generally used for threee reasons:
// 1. Restrict access
// 2. Validate inputs (data)
// 3. Guard against reentrancy hack
//
//  _; => dashed notation -> continue the fuction further or execute the other functions

contract FunctionModifier {
    address public owner;
    uint256 public x = 10;
    bool public locked;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not Owner");
        _;
    }

    modifier validateData(address _addr) {
        require(_addr != address(0), "Not a valid address");
        _;
    }

    // if both the modifier return true then only the statements of the function changeOwner will execut
    function changeOwner(address _newOwner)
        public
        onlyOwner
        validateData(_newOwner)
    {
        owner = _newOwner;
    }

    modifier noReentrancy() {
        require(!locked, "No reentrancy");
        locked = true;
        _;
        locked = false;
    }

    function decrement(uint256 i) public noReentrancy {
        x -= 1;
        if (i > 1) {
            decrement(i - 1);
        }
    }
}
