**DRide (Decentralized Ride using Blockchain Technology)**

Uber and Lyft have disturbed travel industry by providing convinient subscription based model for riders. 

Benefits of Uber/Lyft over Traditional Taxi services:-
1. Convinient to book ride from anywhere and anytime.
2. Resonable ride fare for rider.

Problems with Uber/Lyft services:-
1. Centralized control to determine driver's share. Usually driver gets small protion in their pockets. Also, rider pay platform fee for using services.
2. Data priacy: It includes hacked user personal information, spying of passangers 

Blockchain solution overcomes above problems with Uber/Lyft. It - 
1. Maximizes profit for driver. That is, driver is taking most of the fare share at home.
2. Lowers cost for rider. 
3. Transparent tranasction. 
2. Data privacy

DRide provides below smart contract that anyone can leverage to for building different use cases arround decentralized ride sharing.

One usability steps for DRide:-
1. Using DRide smart contract "DriverAuth", driver can join the system by autheticating himself/herself.
2. Driver post a smart contract "DriverInfo" on the DRide system. Driver specifys his current location, price per mile and limit (in miles) of how far he is willing to go. It holds his review points.
3. Any client-side interface can pulls this information to book the ride. [this app has fundamental command-line client interface. However, anyone can implement UI based interface on top of it.)
4. This interface can allow riders to select available options in his/her region to book a ride.
5. DRide contract "BookRide" will check if rider's account has sufficient balance to make payment. After that ride is booked.
6. After ride completion, payment has been released to Driver from Rider. 
7. Both Driver and Rider can provide review to each other.

Technical Details:
DRide has been developed on Ethereum blockchain. 
IDE: Remix
Langague: Solidity
Contract Definition:
1) DriverAuth: Authenticate driver identity on the blockchain. 
2) DriverInfo: This contract keeps driver's information such as - 
a) vehicle name, vehicle number
b) Current location of driver, price per mile and limit (in miles) of how far he is willing to go.
c) Review points: It will help rider to decide which driver to choose.
3) BookRide: Checks if rider's account has sufficient balance to make payment. After that ride is booked and notified both Rider and Driver.
4) Payment: Payment will be released to Driver.
5) Reward: Both Driver and Rider can provide review to each other. 
