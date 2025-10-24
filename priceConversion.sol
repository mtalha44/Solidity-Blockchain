//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 < 0.9.0;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

library getPrice
{
    function getEthPrice() internal view returns (uint)
    {
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (,int256 price,,,) = priceFeed.latestRoundData();
        return uint(price * 1e10);
    }
    function getVersion() internal view returns (uint)
    {
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        return priceFeed.version();
    }
    function getConversionRate(uint ethAmount) internal view returns(uint)
    {
        uint ethPrice = getEthPrice();

        uint ethToUSD = (ethAmount * ethPrice) /1e18;

        return ethToUSD;
    }
}