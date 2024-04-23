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
