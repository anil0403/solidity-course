//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Pure {
    uint256 num1 = 4;
    uint256 num2 = 10;

    // wrong
    // we cannot access the state variable with pure (but with view)
    // function getData() public pure returns (uint256, uint256) {
    //     return (num1, num2);
    // }

    // pure is restricted to local vairables
    function getData() public pure returns (uint256, uint256) {
        uint256 newNum1 = 30;
        uint256 newNum2 = 50;
        uint256 product = newNum1 * newNum2;
        uint256 total = newNum1 + newNum2;
        return (product, total);
    }
}
