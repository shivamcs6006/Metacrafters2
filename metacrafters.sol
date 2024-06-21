// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {
    
    // Public variables to store the details about the coin
    string public tknName = "MyToken";
    string public tknAbbrv = "MTK";
    uint256 public supply;

    // Mapping of addresses to balances
    mapping(address => uint256) public balance;

    // Mint function to increase the total supply and balance of the specified address
    function mint(address _address, uint256 _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // Burn function to decrease the total supply and balance of the specified address
    function burn(address _address, uint256 _value) public {
        require(balances[_address] >= _value, "Insufficient balance to burn");
        totalSupply -= _value;
        balances[_address] -= _value;
    }
}
