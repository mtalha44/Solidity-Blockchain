//SPDX-License-Identifier:GPL-3.0

// pragma solidity >=0.8.0 < 0.9.0;
pragma solidity ^0.6.0;

contract safeMath
{
    uint8 public numb = 255;

    function add() public 
    {
        unchecked{numb = numb + 1;}
    }
}