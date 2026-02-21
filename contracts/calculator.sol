//SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract Calculator{
    uint256 result;

    function add( uint256 num1) public{
        result += num1;
    }

    function subtract (uint256 num1) public{
        result -= num1;
    }

    function multiply(uint256 num) public {
        result *= num;
    }

    function get() public view returns (uint256){
        return result;
    }
}