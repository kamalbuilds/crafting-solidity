// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
    
        function sum(uint[5] memory array) external returns (uint) {
        uint sums = 0;
        for (uint i = 0; i < array.length; i++){
            sums += array[i];
        }
        return sums;
    }
}