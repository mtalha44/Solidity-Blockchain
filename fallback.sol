//SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

contract FallBack
{
    uint public result;
    
    receive() external payable {
        result = 1;
    } 

    fallback() external payable {
        result = 2;
    }  
}