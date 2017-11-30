pragma solidity ^0.4.8;


contract Office {
   mapping (address => Employee) public OwnerRegistry;
   address[] public OwnerAddresses;

   mapping (address => Employee) public EmployeeRegistry;
   address[] public EmployeeAddresses;
   
   function Office()
   {
        OwnerAddresses.push(msg.sender);
        OwnerRegistry[msg.sender] = passport;
   }

   function RegisterOwner() returns (bool)
   {
        //check if there is already 3 owners
        uint i = 1;
        for(i; i <= OwnerAddresses.length; i++) {
            if(i == 3) {
                //return if there is already 3 owners
                return true;
            }
        }

        //register the new owner

        //verify that the Employee is 

        OwnerAddresses.push(msg.sender);
        
        OwnerRegistry[msg.sender] = passport;
        
   }
}

contract Employee {
    address public User;
    uint public DateCreated;
    string public FirstName;
    string public LastName;
    string public FullName;
    address[] public PrintHistroy;
    address[] public LoginHistory;
    address LoginRegistry

    ;

    function Employee(string _firstName, string _lastName)
    {
        DateCreated = now;
        FirstName = _firstName;
        LastName = _lastName;
        FullName = _firstName + " " + _lastName;
        User = msg.sender;
    }

    function Login()
    {
        EmployeeLoginRegistry cont = LoginRegistry;

    }


}

contract EmployeeLoginRegistry {
  address public Employee;
  uint public LoginDate;

  function EmployeeLoginRegistry()
  {
        Employee = msg.sender;
        LoginDate = now;
  }


}

contract EmployeeLoginRegisrty {
    mapping (address => Employee) public registry;

    address[] public registerAddresses;
    address public createdBy;
  
    function PrintRegistry()
    {
        createdBy = msg.sender;
        
    }
  
    function addToRegestry(address printContractAddress, address user) 
    {
        registerAddresses.push(printContractAddress);
    }


}


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
        m.addToRegestry(this, msg.sender);
     
      
    }


    function GetImageData() returns (string)
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
  
    function addToRegestry(address printContractAddress, address user) 
    {
        registerAddresses.push(printContractAddress);
    }

}
