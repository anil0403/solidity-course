//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// Base constructor X
contract X {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

// Base constructor Y
contract Y {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

// there are two wyas to initialize parent contract with parameters.
// 1. Pass the parameter here in the inheritance list.

contract B is X("Input to x"), Y("Input to Y") {

}

// 2. pass the parameter here in the constructor
// similar to function modifier

contract C is X, Y {
    constructor(string memory _name, string memory _text) X(_name) Y(_text) {}
}

// Parent constructors are always called in the order of inheritance
// regardless of the order of parent contracts listed in the
// constructor of the child contract.

// Order of constructors called
// 1. X
// 2. Y
// 3. D

contract D is X, Y {
    constructor() X("X was called") Y("Y was called") {}
}

// Order of Consructors Called
// 1. X
// 2. Y
// 3. E

contract E is X, Y {
    constructor() Y("Y was called") X("X was called") {}
}
