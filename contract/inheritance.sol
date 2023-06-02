//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// // solidity supports multiple inheritance
// // function that is going to be overriden by child contract must be declared as virtual
// // function that is going to ovrride a parent function must use the keyword override

// // Graph of inheritance
// //      A
// //     / \
// //    B   C
// //   / \ / \
// //  D   EF  G

// contract A {
//     function foo() public pure virtual returns (string memory) {
//         return "a";
//     }
// }

// // B inherites A
// contract B is A {
//     // Override A.foo()
//     function foo() public pure virtual override returns (string memory) {
//         return "B";
//     }
// }

// //  C inherites A
// contract C is A {
//     function foo() public pure virtual override returns (string memory) {
//         return "C";
//     }
// }

// //  contract can inherit multiple parent contract

// // right to left, and in depth-first manner

// contract D is B, C {
//     // D.foo() returns "C"
//     // since C is the right most parent contract with function foo()
//     function foo() public pure override(B, C) returns (string memory) {
//         return super.foo();
//     }
// }

// contract E is C, B {
//     function foo() public pure override(C, B) returns (string memory) {
//         return super.foo();
//     }
// }

// // shadowing effect
// // unlike functions state variables can't be override by redeclaring in the child contract

// contract X {
//     string public name = "contract x";

//     function getName() public view returns (string memory) {
//         return name;
//     }
// }

// // this will not compile
// // contract Y is X {
// //      string public name = "contract B";
// // }

// contract Z is X {
//     // this is the correct way to override inherited state variable
//     constructor() {
//         name = "Contract C";
//     }
// }

// // super keyword
// // allows to inherit parent contract
//         //      A
//         //     / \
//         //    B   C
//         //    \   /
//         //      D

contract A {
    event Log(string message);

    function foo() public virtual {
        emit Log("A.foo() called");
    }

    function bar() public virtual {
        emit Log("A.bar is called");
    }
}

contract B is A {
    function foo() public virtual override {
        emit Log("B.foo is called");
    }

    function bar() public virtual override {
        emit Log("B.bar is called");
        super.bar();
    }
}

contract C is A {
    function foo() public virtual override {
        emit Log("C.foo is called");
    }

    function bar() public virtual override {
        emit Log("C.bar is called");
        super.bar();
    }
}

contract D is B, C {
    // D calls C then B and finally A
    function foo() public virtual override(B, C) {
        // emit Log("D.foo is called");
        super.foo();
    }

    function bar() public virtual override(B, C) {
        // emit Log("D.bar is called");
        super.bar();
    }
}
