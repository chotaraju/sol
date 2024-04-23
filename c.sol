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
