// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Practice 
{
    // bytes2 public alpha = "ab";
    // bytes3 public beta = "a5b";

    // bytes public a = "aAbB";

    // function setA(uint8 numb) public 
    // {
    //     a.push(bytes1(numb));
    // }

    // function getA() view public returns(bytes memory)
    // {
    //     return a;
    // }

    //STRING TO BYTES

    // function convertIntoBytes(string memory name) public pure returns (bytes memory)
    // {
    //     return bytes(name);
    // }

    //Bytes to String

    // function convertIntoString(bytes memory numb) public pure returns(string memory)
    // {
    //     return string(numb);
    // }
    
    // bytes32 public hash;

    // function convertToHash(string memory input) public 
    // {
    //     hash = keccak256(bytes(input));
    // }

    //If Condition

    // function evenNumb(uint numb) public pure returns (string memory)
    // {
    //     if(numb % 2 == 0)
    //     {
    //         return "Even Number";
    //     }
    //     else 
    //     {
    //         return "Odd Number";
    //     }
    // }

    // if-else statement
   
    // function checkGrade(uint obtMarks) public pure returns (string memory) {
    //     uint reslt;
    //     reslt = (obtMarks * 100) / 500;

    //     if (reslt >= 85) {
    //         return "A+";
    //     } else if (reslt >= 75) {
    //         return "A";
    //     } else if (reslt >= 65) {
    //         return "B+";
    //     } else if (reslt >= 55) {
    //         return "B";
    //     } else {
    //         return "Fail";
    //     }
    // }

    //structure data type

    // struct Car
    // {
    //     string name;
    //     uint price;
    //     string model;
    // }

    // Car public car1;
    
    // constructor(string memory name, uint price, string memory model)
    // {
    //     car1.name = name;
    //     car1.price = price;
    //     car1.model = model;
    // }
    // function changeModel(string memory _name, uint _price, string memory _model) public 
    // {
    //     Car memory newCar = Car({
    //         name : _name,
    //         price : _price,
    //         model : _model
    //     });
    //     car1 = newCar;
    // }

    // bool public getstatus;
    // function getStatus(bool status) public {
    //     getstatus = status;
    // }
    // function getAccess() public view returns(string memory)
    // {
    //     if(getstatus)
    //     {
    //         return "Login Successfully";
    //     }
    //     else 
    //     {
    //         return "Info Incorrect";
    //     }
    // }

    
}