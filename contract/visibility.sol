//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// types of visibity :
// 1. public - any contract and account can call
// 2. private - only inside the contract that defines the function
// 3. internal - only inside contract that inherits an internal function
// 4. external - only other contraccts and account can call

contract Base {
    // private function can only be called inside this contract
    // contracts that inherit this contract cannot call this function

    function privateFunc() private pure returns (string memory) {
        return "private function called";
    }

    function testPrivateFunc() public pure returns (string memory) {
        return privateFunc();
    }

    // internal function can be called inside this contract
    // inside contract that inherit this contract

    function internalFunc() internal pure returns (string memory) {
        return "internal function called";
    }

    function testInternalFunc() public pure virtual returns (string memory) {
        return internalFunc();
    }

    // public function can be called
    // - inside this contract
    // - inside the contracts that inherit this contract
    // - by other conracts and accounts

    function publicFunc() public pure returns (string memory) {
        return "public function called";
    }

    // external function can only be called
    // - by other contracts and accounts

    function externalFunc() external pure returns (string memory) {
        return "extrnal function called";
    }

    // this function will not compile since we're trying to call
    // and external function here
    // function testExternalFunc() public pure returns (string memory) {
    //     return externalFunc();
    // }

    // state variables

    string private privateVar = "private variable";
    string internal internalVar = "internal variable";
    string public publicVar = "public variable";

    // state variables cannot be external so this code won't compile
    // string external externalVar = "exernal variable";
}

contract Child is Base {
    function testInternalFunc() public pure override returns (string memory) {
        return "test internal func form child";
    }
}
