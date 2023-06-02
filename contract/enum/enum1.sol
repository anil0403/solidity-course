//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// Declaring here
// and using enum in different file by importing it

enum Status {
    Pending,
    Shipped,
    Accepted,
    Rejected,
    Cancelled
}
