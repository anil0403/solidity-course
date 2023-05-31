//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract DataTypes {
    // boolean
    // bool public hey;
    // bool public no = true;
    //
    // unit unsigned integer - only positive numbers
    // unit8 ranges => (0 to 2*8-1)
    // uint8 ->255
    // unit16 ->65535
    // uint256 ->highest
    // uint8 public u8 = 1;
    // uint256 public u256 = 456;
    // uint256 public u = 126; //automatically takes 256
    //
    // Negative numbers
    //int256
    //int128
    // int8 public I8 = -1;
    // int256 public i256 = -223;
    // int256 public i = 1235;
    //
    //min and max value of a number
    // int public minInt = type(int).min;
    // int public maxInt = type(int).max;
    //
    // Array
    // in soidity, the data types represent a sequence of bytes, so generally there are two types of bytes
    // byte is more gass efficient than string
    // -- fixed sized bytes arrays
    // --dynamically sized bytes arrays
    // when you define bytes in smart contract it represent dynamic byte
    // bytes1 public a;
    // bytes2 public b;
    // bytes1 public c = 0xb5;
    // bytes2 public d = 0x5665;
    // bytes3 public e = 0x5665EA;
    // bytes4 public f = 0x56654567;
    //
    // Address types
    // address public hey;
    // address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    //
    // Default data types
    // there is no concept of undefined and null in solidity
    // bool public defaultBool; // false
    // uint public number; // 0
    // int public defaultInt ; // 0
    // address public addr; // 0x0000000000....
    //
    //
}
