//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Events {
    // event declaration
    // up to 3 parameters can be indexed
    // indexed parameters hepls us to filter the logs by the indexed parameter

    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "Hello world");
        emit Log(msg.sender, "Hemml evm");

        emit AnotherLog();
    }
}
