//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract View {
    uint256 public num1 = 2;
    uint256 public num2 = 7;

    // using view to check the state variable
    // function getResults() public view returns (uint256, uint256) {
    //     return (num1, num2);
    // }

    // view : allows only to see the state variable
    // view : don't allow to modify the state variable

    function getResults() public view returns (uint256 product, uint256 total) {
        uint256 Num1 = 20;
        uint256 Num2 = 30;

        // num1 += 5; //wrong
        // num2 += 7; //wrong

        product = num1 * num2;
        total = Num1 + Num2;
    }

    // if we are intended to manipulate the state variable, then we can't use view keyword

    function getResults1() public returns (uint256 product, uint256 total) {
        uint256 Num1 = 20;
        uint256 Num2 = 30;

        num1 += 5; // correct
        num2 += 7; // correct

        product = num1 * num2;
        total = Num1 + Num2;
    }
}
