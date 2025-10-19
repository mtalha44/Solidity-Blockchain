// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "identity.sol";

//Inheritance
contract ExtraStorageFactory is Practice
{
    //Overriding the function in Practice Contract
   function store(uint _number) public override {
     number = _number + 5;
   }


}
