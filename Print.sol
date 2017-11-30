
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

    function Print(uint _datePrinted, string _fileData, string _userID, string _printerID, string _userIP, string _userMAC, string _fileHash, string _user) {    
        datePrinted = _datePrinted;
        userID = _userID;
        fileData = _fileData;
        printerID = _printerID;
        fileHash = _fileHash;
        userIP = _userIP;
        userMAC = _userMAC;
        registryContract = msg.sender;
        user = _user;
    }

    function getImageData(returns string)
    {
        return fileData;
    }
}