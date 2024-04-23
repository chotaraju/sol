// Write a solidity program to implement Smart Contracts by demonstrating Error Handling by assert, revert and require.

pragma solidity ^0.5.0;

contract ErrorHandling {
    function requireExample(uint _num) public pure returns (uint) {require(_num > 0, "Number must be greater than zero"); return _num;}
    
    function revertExample(uint _num) public pure returns (uint) {require(_num > 0, "Number must be greater than zero"); return _num;}
    
    function assertExample(uint _num) public pure returns (uint) {require(_num > 0); return _num;}
}
