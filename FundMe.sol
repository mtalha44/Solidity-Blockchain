//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "priceConversion.sol";

contract FundMe
{
    using getPrice for uint;

    address[] public funder;
    mapping (address => uint ) public addressToFundingAmount;

   function fund() public payable
   {
        require( msg.value.getConversionRate() >= 1*10**18, "Minimum 1 USD can be send" );
        funder.push(msg.sender);
        addressToFundingAmount[msg.sender] += msg.value;
        
   }
   

 }