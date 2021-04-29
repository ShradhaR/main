//*************** Payment Receiver ***************
contract Driver_Receiver
{
    address public driver;

   
    constructor() public {
        driver = msg.sender;
    }
    
   
   function getDriverAdd() public view returns(address) {
       return driver;
   }
   
   receive() external payable 
    {
        
    }
}
