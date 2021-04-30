pragma solidity ^0.6.0;

import './DriverAuth.sol';

contract DriverInfo is Ownable
{
    address public driver_address ; 
    mapping(uint => Driver) public drivers;
    enum vehicle_type { Car, NonCar }
    
    struct Driver{
    string driver_name;
    uint vehicle_num;
    vehicle_type v_type;
    uint reward;
    string current_location;
    string price_per_mile;
    string max_miles_per_ride;
    }
    
    constructor() public
    {
        super;
        driver_address = msg.sender;
    }
    
   
    
    function addDriver(uint _id, string memory _driver_name, uint _vehicle_num, vehicle_type _v_type, string memory _current_location, string memory _price_per_mile, string memory _max_miles_per_ride) public 
    {
        require(drivers[_id].v_type == vehicle_type.Car, "DRide only accept cars.");
        drivers[_id] = Driver(_driver_name, _vehicle_num, _v_type, 0, _current_location, _price_per_mile, _max_miles_per_ride);
    }

}