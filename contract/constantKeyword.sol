//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ConstantKeyword {
    address public myAddr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    // executing cost =  71666 gas

    // defining constant variable
    address public constant Myadd = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // executing cost =  47099 gas

    // why? warning with view
    function getConstant() public pure returns (address) {
        return Myadd;
    }
}
