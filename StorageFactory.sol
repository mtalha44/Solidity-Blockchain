// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
import "identity.sol";

contract StorageFactory
{
    //Contract deploying other Contract
    // Practice public simpleContract;

    // function DeployOtherContract() public 
    // {
    //     simpleContract = new Practice();
    // }
    
    
    //Instead of variable, creating array of contract and deploying
    Practice[] public simpleContract;

    function DeployOtherContract() public 
    {
        Practice newcontract = new Practice();
        simpleContract.push(newcontract);
    }

    function sfStore(uint _indexno, uint _number) public
    {
        // Practice newcontract = simpleContract[_indexno];
        // newcontract.store(_number);
        //Or
        simpleContract[_indexno].store(_number); //shorthand
    }

    function sfGet(uint _indexno) view public returns (uint)
    {
        // Practice newcontract = simpleContract[_indexno];
        // return newcontract.retrieve();
        //Or
        return simpleContract[_indexno].retrieve(); //shorthand
    }

}