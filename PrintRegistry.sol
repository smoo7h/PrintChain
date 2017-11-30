pragma solidity ^0.4.8;

contract Print {
    address public registryContract; //owner
    uint public datePrinted;
    address public user;
    string public fileData;
    string public userID;
    string public printerID;
    string public userIP;
    string public userMAC;
    string public fileHash;
    address public printRegistry;

    function Print(uint _datePrinted, string _fileData, string _userID, string _printerID, string _userIP, string _userMAC, string _fileHash, address _user, address _printRegistry) {    
        datePrinted = _datePrinted;
        userID = _userID;
        fileData = _fileData;
        printerID = _printerID;
        fileHash = _fileHash;
        userIP = _userIP;
        userMAC = _userMAC;
        registryContract = msg.sender;
        user = _user;
        printRegistry = _printRegistry;

        //register the print to the registry
        PrintRegistry m = PrintRegistry(_printRegistry);
        m.addToRegestry(this);
        m.registry[msg.sender] = m;
      
    }


    function getImageData() returns (string)
    {
        return fileData;
    }
}


contract PrintRegistry {
    mapping (address => Print) public registry;

    address[] public registerAddresses;
    address public createdBy;
  
    function PrintRegistry()
    {
        createdBy = msg.sender;
        
    }
  
    function addToRegestry(address printContractAddress) 
    {
        registerAddresses.push(printContractAddress);
    }

}
