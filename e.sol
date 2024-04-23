// Write a solidity program to implement Smart Contracts by demonstrating different types of Inheritance.
pragma solidity ^0.5.0;

contract Base {
    uint public value;
    
    function initialize(uint _value) public {
        value = _value;
    }
}

contract Derived is Base {
    function doubleValue() public {
        value *= 2;
    }
}
