//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "priceConversion.sol";
error notOwner(); 

contract FundMe
{
    using getPrice for uint;
    uint public constant minimumUSDT = 1*10**18;

    address public immutable i_owner;
    constructor()
    {
        i_owner = msg.sender;
    }

    address[] public funder;
    mapping (address => uint ) public addressToFundingAmount;

   function fund() public payable
   {
        require( msg.value.getConversionRate() >= minimumUSDT, "Minimum 1 USD can be send" );
        funder.push(msg.sender);
        addressToFundingAmount[msg.sender] += msg.value;
        
   }
   
    function withdraw() public onlyOwner
    {
        // set the amount to zero
        for(uint i = 0; i< funder.length;i++)
        {
            address tempfunder = funder[i];
            addressToFundingAmount[tempfunder] = 0;
        } 

        //resetting the array
        funder = new address[](0);

        //transfer        
        payable(msg.sender).transfer(address(this).balance);
        
        //send
        bool success = payable(msg.sender).send(address(this).balance);
        require(success,"Withdraw failed");

        //call
        (bool successfull, ) = payable(msg.sender).call{value : address(this).balance }("");
        require(successfull,"failed Call");

    }

    modifier onlyOwner
    {
        // require(i_owner == msg.sender, "Sender is not Owner");
        if(i_owner != msg.sender) 
        {
            revert notOwner();
        }
        _;
    }

    receive() external payable { 
        fund();
    }

    fallback() external payable {
        fund();
    }

}