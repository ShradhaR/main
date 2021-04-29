pragma solidity ^0.6.0;

contract Ownable
{
    address owner;
    
    
    constructor() public {
        owner = msg.sender;
    } 
    modifier onlyOwner()
    {
        require(msg.sender == owner,"DRide can oply accessed by authorized entity." );
        _;
    }
    
}
contract DriverAuth is Ownable
{
    bool public DriverLicense;
    
    constructor() public{
        DriverLicense = true;
        super;
    }
    
    function verifyIdentity() public view onlyOwner returns(bool)
    {
        return(DriverLicense);
    }
}