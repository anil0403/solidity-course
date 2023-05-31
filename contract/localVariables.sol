//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract LocalVariables {
    uint256 public myNumber;

    // function for local variables
    function local()
        public
        returns (
            address,
            uint256,
            uint256
        )
    {
        // variabes defined inside the function scope are local variables
        // not stored on the blockchain but stored on the memory

        uint256 i = 345;
        myNumber = i;
        i += 90;
        address myAddress = address(1);
        return (myAddress, myNumber, i);
    }
}
