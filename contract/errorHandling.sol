//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// error handling
// three types
// 1. required
// 2. assert
// 3. revert

contract ErrorHandling {
    // require keyword (condition and message)
    function check(uint256 _input) public pure returns (string memory) {
        require(_input >= 0, "invalid uint8");
        require(_input <= 255, "invalid uint");

        return "input is uint8";
    }

    function odd(uint256 _input) public pure returns (bool) {
        require(_input % 2 != 0);
        return true;
    }

    //assert keyword (only condition)
    bool public result;

    function checkOverflow(uint256 _num1, uint256 _num2) public {
        uint256 sum = _num1 + _num2;
        assert(sum <= 255);
        result = true;
    }

    function getResult() public view returns (string memory) {
        if (result == true) {
            return "no overflow extist";
        } else {
            return "overflow exist";
        }
    }

    // revert condition (least used error handling method )
    function checOverflow1(uint256 _num1, uint256 _num2)
        public
        pure
        returns (string memory, uint256)
    {
        uint256 sum = _num1 + _num2;
        if (sum < 0 || sum > 255) {
            revert("OVerflow exist");
        } else {
            return ("No overflow", sum);
        }
    }
}
