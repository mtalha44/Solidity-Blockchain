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

    //enum:

    // enum State { ordered , shiped , received }

    // State public currentState;

    // constructor()
    // {
    //     currentState = State.ordered;
    // }

    // function Shiped() public
    // {
    //     require(currentState == State.ordered , "Already Shiped or Recieved");
    //     currentState = State.shiped;
    // }

    // function recieved() public 
    // {
    //     require(currentState == State.shiped , "Already Shiped or Recieved" );
    //     currentState = State.received;
    // }

    // function getStatusLevel() view public returns (uint)
    // {
    //     return uint(currentState);
    // }

    //mapping uint => string

    // mapping ( uint => string ) public _rollno;
    // function setStudent( uint _key , string memory _name ) public 
    // {
    //     _rollno[_key] = _name;
    // }
    // function getStudent(uint _key) view public returns (string memory)
    // {
    //     return _rollno[_key];
    // }

    //mapping uint to struct

    // struct Student
    // {
    //     string name;
    //     string class;
    // }

    // mapping( uint => Student ) public data;

    // function setter(uint _rollno, string memory _name , string memory _class) public
    // {
    //     data[_rollno] = Student( _name , _class );
    // }

    //storage vs memory

    // string[] public students = ["Talha", "Khalid", "Bilal", "Hamza"];

    // //it will change the real array, becuase test points towards students array ( means it oly hold adress )
    // function stor() public
    // {
    //     string[] storage test = students;
    //     test[0] = "Change";
    // }

    // //actual array of students will not be changed, because it create a copy of array in memory.
    // function mem() public view
    // {
    //     string[] memory test = students;
    //     test[0] = "Change";
    // }

    //Global Variables

    // function globalVariables() view public returns ( uint block_no, uint timestamp, address msgSender)
    // {
    //     return (block.number, block.timestamp , msg.sender);
    // }

    // address payable user  = payable(0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB);
    // // pay ether to contracts 
    // function payEther() payable public 
    // {

    // } 

    // //Checking balance of contracts

    // function checkBalance() public view returns (uint)
    // {
    //     return address(this).balance;
    // }

    // // transfer ether to account


    // function etherTransfer() public
    // {
    //     require(address(this).balance >= 1, "Isuffiecient Balance");
    //     user.transfer(1 ether);
    // }

    //Creating struct and then storing multiple data(structures) into an array of structure..
    // struct Person
    // {
    //     uint phno;
    //     string name;
    // }
    // Person[] public person;

    // function setValues(uint _no, string memory _name) public
    // {
    //     Person memory newPerson = Person(_no,_name);
    //     person.push(newPerson);
    // }


    //Visibility

/*
VISIBILITY SPECIFIERS IN SOLIDITY

public:
   - Accessible from:
        Inside the same contract
        Inherited (child) contracts
        External calls (other contracts or dApp frontend)
   - A public state variable automatically gets a getter function.
   - Example use: Open functions anyone can call (like updating a balance).

private:
   - Accessible from:
        Only within the same contract
   - NOT accessible in derived (child) contracts or externally.
   - Used for internal logic or sensitive data.
   - Example use: Internal counters or security logic not exposed outside.

internal:
   - Accessible from:
        Inside the same contract
        Inherited (child) contracts
   - NOT accessible from outside the contract.
   - Similar to 'protected' in OOP languages.
   - Example use: Functions reused by child contracts.

external:
   - Accessible from:
        Only from outside the contract
        NOT directly callable from inside (must use 'this.externalFunc()')
   - More gas efficient when called externally.
   - Example use: Functions meant for users, not internal logic.
*/
    // function A() public pure returns (uint)
    // {
    //     return 1;
    // }
    // function B() private pure returns (uint)
    // {
    //     return 2;
    // }
    // function C() internal pure returns (uint)
    // {
    //     return 3;
    // }
    // function D() external  pure returns (uint)
    // {
    //     return 4;
    // }

   uint public number;

   function store(uint _number) public virtual {
       number = _number;
   }

   function retrieve() public view returns(uint) {
       return number;
   }
    


}