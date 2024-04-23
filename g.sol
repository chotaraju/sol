// Write a solidity program to implement Smart Contracts by demonstrating Pure, View, Internal and External functions.

// SPDX-License-Identifier: MIT
pragma solidity >0.4.0 <0.6.0;

contract FunctionModifiersExample {
    uint256 public stateVariable = 100;
   
    // Pure function - does not read or modify state
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
   
    function getStateVariable() public view returns (uint256) {
        return stateVariable;
    }
   function get() public payable returns (uint256) {
       
        incrementStateVariable();
        return stateVariable;
    }
   
    function incrementStateVariable() internal {
        stateVariable++;
    }
   
    function decrementStateVariable() external {
        stateVariable--;
    }
}
