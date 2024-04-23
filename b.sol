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
