// Create and use Library
pragma solidity ^0.5.0;
 library MathLibrary { 
function add(uint256 a, uint256 b) external pure returns (uint256) { 
return a + b; } 
}



//Array & Mapping
pragma solidity ^0.5.0;
contract ArrayMappingExample {
    mapping(uint => string) details;
    uint[] public myArray;
    function updateDetails(uint id, string memory name) public {
        details[id] = name;
    }
    function getDetails(uint id) public view returns (string memory) {
        return details[id];
    }
    function addTo(uint x) public {
        myArray.push(x);
    }
    function getArray() public view returns (uint[] memory) {
        return myArray;
    }
}



//Write a solidity program to display bank transactions (to deposit, withdraw, check balance, apply for loan, owner)
pragma solidity ^0.5.0;
contract Bank {
    uint256 private balance;
    address public owner;
    modifier onlyOwner {require(msg.sender == owner); _;}
    constructor(uint256 initialBalance) public {owner = msg.sender; balance = initialBalance;}
    function deposit(uint256 amount) public {balance += amount;}
    function withdraw(uint256 amount) public onlyOwner {require(amount <= balance); balance -= amount;}
    function checkBalance() public view onlyOwner returns (uint256) {return balance;}
}
contract MyContract is Bank(0) {
    string public name;
    uint public age;
    function setName(string memory newName) public onlyOwner {name = newName;}
    function setAge(uint newAge) public onlyOwner {age = newAge;}
    function getName() public view returns (string memory) {return name;}
    function getAge() public view returns (uint) {return age;}
}



// Write a solidity program to implement CRUD operations
pragma solidity ^0.5.0;
contract CRUD {
    struct Data {
        uint id;
        string name;
    }
    mapping(uint => Data) public dataList;
    uint public dataCount;
    function createData(string memory _name) public {
        dataCount++;
        dataList[dataCount] = Data(dataCount, _name);
    }
    function readData(uint _id) public view returns (uint, string memory) {
        return (dataList[_id].id, dataList[_id].name);
    }
    function updateData(uint _id, string memory _newName) public {
        require(_id <= dataCount, "Data does not exist");
        dataList[_id].name = _newName;
    }
    function deleteData(uint _id) public {
        require(_id <= dataCount, "Data does not exist");
        delete dataList[_id];
    }
}



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



// Write a solidity program to implement Smart Contracts by demonstrating Error Handling by assert, revert and require.
pragma solidity ^0.5.0;
contract ErrorHandling {
    function requireExample(uint _num) public pure returns (uint) {require(_num > 0, "Number must be greater than zero"); return _num;}
    function revertExample(uint _num) public pure returns (uint) {require(_num > 0, "Number must be greater than zero"); return _num;}
    function assertExample(uint _num) public pure returns (uint) {require(_num > 0); return _num;}
}



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