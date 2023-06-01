//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// two types of array:
// 1. fixed sized array (compile time)
// 2. dynamic sized array

contract Array {
    // serveral ways to initialize arrays
    uint256[] public arr;
    uint256[] public arr2 = [1, 2, 3, 4];

    //fixed size array, all elements initialized to zero
    uint256[10] public fixedSizedArr;

    function get(uint256 _i) public view returns (uint256) {
        // _i is index
        return arr[_i];
    }

    // solidity can return entire array
    // but this function should be avoided for
    // arrays that can grow indefinetely in Length

    function getArr() public view returns (uint256[] memory) {
        return arr;
    }

    // append to array
    function push(uint256 _data) public {
        arr.push(_data);
    }

    // remove the last  element
    function pop() public {
        arr.pop();
    }

    // get length
    function getLength() public view returns (uint256) {
        return arr.length;
    }

    // remove an element
    // remove element of _index
    // no changes in the length (removing means resetting the data to 0 from that index )
    function remove(uint256 _index) public {
        delete arr[_index];
    }

    // function example() external pure {
    //     // create array in memory, only fixed size can be creted
    //     uint256[] memory a = new uint256[](5);
    // }
}

// shifting
contract ArrayRemoveByShifting {
    // [1,2,3] -- remove(1) --> [1,3]
    // 1-> index
    // [5] -- remove(0) --> []
    uint256[] public arr;

    function remove(uint256 _index) public {
        require(_index < arr.length, "index out of bound");
        for (uint256 i = _index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1];
        }
        arr.pop();
    }

    function test() external {
        arr = [1, 2, 3, 4, 5];
        //remove index 2
        remove(2);
        // [1,2,4,5]
        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 4);
        assert(arr[3] == 5);
        assert(arr.length == 4);

        arr = [1];
        remove(0);
        assert(arr.length == 0);
    }
}

// replacing array
contract ArrayReplaceFromEnd {
    uint256[] public arr;

    //deleting an element creates a gap in the array
    // on trick to keep the array compact is to
    // move the last element into the place to delete

    function remove(uint256 _index) public {
        // move the last elemnt into the place to delete
        arr[_index] = arr[arr.length - 1];

        //remove the last elemet
        arr.pop();
    }

    function test() public {
        arr = [1, 2, 3, 4, 5];
        remove(2);
        // [1,2,5,4]
        assert(arr.length == 4);
        assert(arr[0] == 1);
        assert(arr[3] == 4);

        remove(1);
        // [1, 4, 5]
        assert(arr.length == 3);
        assert(arr[0] == 1);
        assert(arr[2] == 5);
    }
}
