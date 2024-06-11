// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {
    
    // Public variables to store the details about the coin
    string public tknName = "MyToken";
    string public tknAbbrv = "MTK";
    uint256 public supply;

    // Mapping of addresses to balances
    mapping(address => uint256) public balance;

    // Mint Function to increase the total supply and balance of the specified address
    function mint(address addr, uint256 value) public {
        supply += value;
        balance[addr] += value;
    }
    // Burn Function to decrease the total supply and balance of the specified address
    function burn(address addr, uint256 value) public {
        supply -= value;
        balance[addr] -= value;
    }
}