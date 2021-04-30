pragma solidity ^0.6.0;

import './DriverInfo.sol';
import './Driver_Receiver.sol';

//*************** Payment Sender ***************
contract BookRide is DriverInfo    
{
    address payable public rider; 
    uint total_ride_miles;
    uint price_per_mile;
    uint amt;
    enum Statuses { Available, Occupied }
    Statuses currentStatus;
    
    Driver_Receiver private receiverAdr = new Driver_Receiver();
    //event RideCompleted(address _driver, uint _amt);    
     constructor() public {
        super;
        currentStatus = Statuses.Occupied;
        rider = msg.sender;
        total_ride_miles = 1;
        price_per_mile = 1;
        amt = total_ride_miles* price_per_mile;
    }
    
    modifier fare(uint _amt) {
         require(msg.value >= (_amt), "Not enough Ether on Rider's account.");
        _;
    }
    
    function rider_payfare() public payable fare(amt) {
        address(receiverAdr).call.value(amt);
        currentStatus = Statuses.Available;
        //emit RideCompleted(msg.sender, msg.data);
    }
    
}

