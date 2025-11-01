//SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.8.0 < 0.9.0;

// import "priceConversion.sol";
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
error NotOwner();

contract Revision
{
        AggregatorV3Interface public priceFeed;
        address immutable i_owner;

    address[] public funder;
    mapping (address => uint) addressToFunderAmount;

    constructor()
    {
        i_owner = msg.sender;
        priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
    }

    uint constant public minimumUSDT = 1*10**18;
    function deposit() payable public 
    {
        require( getConversion(msg.value) >= minimumUSDT , "Require minimum 1$");
        funder.push(msg.sender);
        addressToFunderAmount[msg.sender] += msg.value;
    }
    function getConversion(uint ethAmount) view public returns (uint)
    {
        uint ethPrice = getEthPrice(); 
        uint priceIntoUsd = ethAmount * ethPrice;
        return priceIntoUsd;
    }
    function getEthPrice() view public returns(uint)
    {
        (,int price,,,) = priceFeed.latestRoundData();
        return uint(price / 1e8);
    }
    function getVersion() view public returns (uint)
    {
        return priceFeed.version();
    }

    function withdraw() public onlyOwner
    {
        for(uint i = 0; i< funder.length ; i++)        
        {
            address temper = funder[i];
            addressToFunderAmount[temper] = 0; 
        }

        funder = new address[](0);

        //transfer
        payable(msg.sender).transfer(address(this).balance);

        //send
        bool success = payable(msg.sender).send(address(this).balance);
        require(success , "Withdraw Failed");

        //call
        (bool successful , ) = payable(msg.sender).call{ value : address(this).balance }("Data");
        require(successful , "CallFailed");

    }


    modifier onlyOwner
    {
        if( i_owner != msg.sender )
        {
           revert NotOwner();
        }
        _;
    }

    receive() external payable {
        deposit();
    }
    
    fallback() external payable {
        deposit();
    }

}