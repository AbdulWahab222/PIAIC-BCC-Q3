//SPDX-License-Identifier: Unlicensed;

pragma solidity ^0.8.0;

// Step1 Create a first "ParentVehicle"


contract ParentVehicle {
    
    function start() public pure returns (string memory){
        string memory a = "The Vehicle has just Started";
        return a;
        
    }
    
     function accelerate() public pure returns (string memory){
        string memory a = "The Vehicle has just Accelerated";
        return a;
        
    }
    
    function stop() public pure returns (string memory){
        string memory a = "The Vehicle has just stopped";
        return a;
        
    }
    
    function service() public virtual returns (string memory){
        string memory a = "The Vehicle is being serviced";
        return a;
        
    }
    
}

//Step2 Create  Child contracts for a different type of vehicles, that inherits Vehicle



contract cars is ParentVehicle{
    function service() override public pure returns (string memory){
       string memory  a = "The Car is being serviced";
       return a;
    }
}


contract Truck is ParentVehicle{
    function service() override public pure returns (string memory){
       string memory  a = "The Truck is being serviced";
       return a;
    }
}


contract MotorCycle is ParentVehicle{
    function service() override public pure returns (string memory){
       string memory  a = "The MotorCycle is being serviced";
       return a;
    }
}

/*Step3 Now create smart contracts for “Alto Mehran, “ Hino, Yamaha, that may inherit
the relevant smart contract(s) as in step 2.*/


contract AltoMehran is cars{
    
}

//step No 4.a

contract ServiceStation1 is cars {
    function vehicleService(address add) public pure returns(string memory) {
        AltoMehran a = AltoMehran(add);
        return a.service();
    }
}

contract Hino is Truck{
    
}

//step No 4.b
contract ServiceStation2 is Truck {
    function vehicleService(address add) public pure returns(string memory) {
        Hino b = Hino(add);
        return b.service();
    }
}

contract Yamaha is MotorCycle{
    
}

//step No 4.c
contract ServiceStation3 is Yamaha {
    function vehicleService(address add) public pure returns(string memory) {
        Yamaha c = Yamaha(add);
        return c.service();
    }
}
