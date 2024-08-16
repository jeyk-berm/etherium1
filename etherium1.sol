// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mod1 {
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    event Mint(address indexed to, uint256 value);
    event Burn(address indexed from, uint256 value);

    constructor(string memory _name, string memory _symbol, uint256 _initialSupply) {
        name = _name;
        symbol = _symbol;
        totalSupply = _initialSupply;
        balanceOf[msg.sender] = _initialSupply;
    }


    function mint(address _to, uint256 _value) external {
        require(_value > 10, "Value must be greater than ten");

        balanceOf[_to] += _value;
        totalSupply += _value;
        emit Mint(_to, _value);

        assert(balanceOf[_to] >= _value);
    }

    function burn(uint256 _value) external {
        require(_value <= balanceOf[msg.sender], "Insufficient balance");

        if (_value == 69) {
            revert("Cannot burn 69");
        }

        balanceOf[msg.sender] -= _value;
        totalSupply -= _value;
        emit Burn(msg.sender, _value);
    }
}
