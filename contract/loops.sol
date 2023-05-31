//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// execution cost is much high for loops
// so avoid loops as possible

contract Loops {
    // syntax
    // while (condition){
    //     statement;
    // }

    uint256[] data;
    uint8 k = 0;

    function loop() public returns (uint256[] memory) {
        while (k < 5) {
            k++;
            data.push(k);
        }
        return data;
    }

    // syntax
    // do{
    //     statements;
    // }while (condition);

    function doWhileLoop() public returns (uint256[] memory) {
        do {
            k++;
            data.push(k);
        } while (k < 5);
        return data;
    }

    //syntax
    function forLoop() public returns (uint256[] memory) {
        for (k = 0; k < 10; k++) {
            data.push(k);
        }
        return data;
    }
}
