//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Enum {
    // Enum representation shipping status

    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Cancelled
    }

    // whenever we declare enum, the default value will be first element

    Status public status;

    // Returns uint
    // Pending  - 0
    // Shippded - 1
    // Accepted - 2
    // Rejected - 4
    // Accepted - 5

    // returns the default value ( Pending - 0 )

    function get() public view returns (Status) {
        return status;
    }

    // update status by passing uinit into input

    function set(Status _status) public {
        status = _status;
    }

    // update to a specific enum like this

    function cancel() public {
        status = Status.Cancelled;
    }

    // delete resets the enmum to its first value , 0

    function reset() public {
        delete status;
    }
}
