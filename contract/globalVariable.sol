//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract GlobalVariable {
    // owner is global variable
    address public owner;

    //other global variables
    address public Myblockhash;
    uint256 public difficulty;
    uint256 public gassLimit;
    uint256 public number;
    uint256 public timestamp;
    uint256 public value;
    uint256 public nowOn;
    address public origin;
    uint256 public gassprice;
    bytes public callData;
    bytes4 public Firstfour;

    constructor() {
        // whoever will deploy this contract became the msg.sender;
        owner = msg.sender;
        Myblockhash = block.coinbase;
        difficulty = block.difficulty;
        gassLimit = block.gaslimit;
        number = block.number;
        timestamp = block.timestamp;
        gassprice = tx.gasprice;
        origin = tx.origin;
        callData = msg.data;
        Firstfour = msg.sig;
    }
}
