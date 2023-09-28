pragma solidity ^0.8.0;

// Import the interface of the 'second' contract
import "./Second.sol"; // Assuming 'Second' is the name of the 'second' contract file

contract First {
    uint sum;
    Second secondContract; // Declare a variable to store the instance of the 'second' contract

    // Pass the address of the deployed 'second' contract during deployment of 'First'
    constructor(address _secondAddress) {
        secondContract = Second(_secondAddress);
    }

    function store() public {
        sum = secondContract.add(5, 10);
    }

    function vi() view public returns(uint256){
        return sum;
    }
}
