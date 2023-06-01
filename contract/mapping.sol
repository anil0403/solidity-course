//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// mapping
// syntax
// mapping(keyType => valueType)
// keyType -> can be any data type, or any contract
// valueType -> only mapping or array

contract Mapping {
    // mapping form addres to uint
    mapping(address => uint256) public myMap;

    function get(address _addr) public view returns (uint256) {
        // mapping always returns a value
        // if the value was never set, it returns default value
        return myMap[_addr];
    }

    function set(address _addr, uint256 _id) public {
        // update the value at this address
        myMap[_addr] = _id;
    }

    function remove(address _addr) public {
        // Reset the value to the default value
        delete myMap[_addr];
    }
}

// nested mapping
contract NestedMapping {
    // nesteed mapping
    // mapping form address to another mapping
    mapping(address => mapping(uint256 => bool)) public nested;

    function get(address _addr, uint256 _id) public view returns (bool) {
        // we can get values form a nested mapping
        // even when it is not initialized
        return nested[_addr][_id];
    }

    function set(
        address _addr,
        uint256 _id,
        bool _b
    ) public {
        nested[_addr][_id] = _b;
    }

    function remove(address _addr, uint256 _id) public {
        delete nested[_addr][_id];
    }
}
