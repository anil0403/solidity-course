//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Functions {
    // functions can returns multiple values
    uint256[] arr;

    function returnMany()
        public
        pure
        returns (
            uint256,
            bool,
            uint256
        )
    {
        return (1, true, 5);
    }

    // Return values by name
    function named()
        public
        pure
        returns (
            uint256 x,
            bool b,
            uint256 y
        )
    {
        return (1, false, 10);
    }

    // return values can be assigned to their name
    // in this case return statement can be omitted

    function assigned()
        public
        pure
        returns (
            uint256 x,
            bool b,
            uint256 y
        )
    {
        x = 1;
        b = true;
        y = 20;
    }

    // use destructuring assignment when calling another
    // function that can return multiple values

    function destructuringAssignment()
        public
        pure
        returns (
            uint256,
            bool,
            uint256,
            uint256,
            uint256
        )
    {
        (uint256 i, bool b, uint256 j) = returnMany();

        // values can be left out
        (uint256 x, , uint256 y) = (4, 5, 6);

        return (i, b, j, x, y);
    }

    // cannot use map for either input or output

    // can use an array for input
    function arrayInput(uint256[] memory _arr) public {}

    // can use output for array
    function arrayOutput() public view returns (uint256[] memory) {
        return arr;
    }
}

// call function with key-value inputs

contract XYZ {
    function someFunctionWithManyInputs(
        uint256 x,
        uint256 y,
        uint256 z,
        address a,
        bool b,
        string memory c
    ) public pure returns (uint256) {}

    function callFunc() external pure returns (uint256) {
        return someFunctionWithManyInputs(1, 2, 3, address(0), true, "ANil");
    }

    // function with key value

    function callFuncWithKeyValue() external pure returns (uint256) {
        return
            someFunctionWithManyInputs({
                a: address(0),
                b: true,
                c: " Anil",
                x: 1,
                y: 2,
                z: 3
            });
    }
}
