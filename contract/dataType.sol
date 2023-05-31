//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract DataTypes {
    // boolean
    bool public hey;
    bool public no = true;

    //unit unsigned integer - only positive numbers
    //ranges => (0 to 2*8-1)
    // uint8 ->255
    // unit16 ->65535
    // uint256 ->highest

    uint8 public u8 = 1;
    uint256 public u256 = 456;
    uint256 public u = 126; //automatically takes 256
}
