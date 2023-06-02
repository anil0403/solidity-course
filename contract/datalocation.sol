//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// three different type of data storage
// 1. memory
// 2. storage
// 3. calldata

// the data that are defined as storage are stored in blockchin
// the data that are defined as memory are exist in the function
// the data thate are defined as calldata are going to be an argument

contract DataLocation {
    uint256[] public arr;
    mapping(uint256 => address) map;

    struct MyStruct {
        uint256 foo;
    }
    mapping(uint256 => MyStruct) myStructs;

    function f() public {
        // call _f with state variables
        _f(arr, map, myStructs[1]);

        // get a struct from a mapping
        MyStruct storage myStruct = myStructs[1];

        // create a struct in memory
        MyStruct memory myMemStruct = MyStruct(0);
    }

    function _f(
        uint256[] storage _arr,
        mapping(uint256 => address) storage _map,
        MyStruct storage _myStruct
    ) internal {
        // do someting
    }

    // you can return memory variables
    function g(uint256[] memory _arr) public returns (uint256[] memory) {
        // do something with memory array
    }

    function h(uint256[] calldata _arr) external {
        // do something with calldata arrya
    }
}
