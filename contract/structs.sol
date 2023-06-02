//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// allows to create related data

contract Todos {
    // struct declaration

    struct Todo {
        string text;
        bool completed;
    }

    // when a struct is defined, we have to define an array

    Todo[] public todos;

    // three ways to initialize a struct

    function create(string calldata _text) public {
        // 1. calling it like a function
        todos.push(Todo(_text, false));

        // // 2. key value mapping
        // todos.push(Todo({text: _text, completed: false}));

        // // 3. initialize an empty struct and then update it
        // Todo memory todo;
        // todo.text = _text;
        // todo.completed = false;
        // todos.push(todo);
    }

    // solidity automatically create a getter for 'todos' so
    // you don't actually need this function

    function get(uint256 _index)
        public
        view
        returns (string memory text, bool completed)
    {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    // update todo (text)
    function updateText(uint256 _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    // update todo (completed)
    function toggleCompleted(uint256 _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}

// importing struct

// import "./struct.sol";

// Todo[] public todos;
