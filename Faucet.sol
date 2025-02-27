// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;
      
      //@Title 
      //@author Mentem Deus
      //@notice a smart contract  that gives away small amounts of ether  for free, 
      //typically to help new users get started with a Ethereum  blockchain . 
      
      
 
       contract Faucet {
      
      uint amount;
      uint balance;
      constructor ()  payable {
            amount = 1 ether;
            balance = address(this).balance;
      }
            receive() external payable { }
            //@notice the balance should be >= amount that the user wants to withdraw 
            //and it should not be a burn address
           
         function Withdraw() public {
            require(balance  >= amount, "insufficient funds");
            require(msg.sender != address(0), "invalid address");
            balance -= amount;
            payable( msg.sender).transfer(amount);
           

      }
  }








