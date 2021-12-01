pragma solidity ^0.4.24;

import "./StandardToken.sol";


contract DemoToken is StandardToken {
    string public constant symbol = "DEMO";
    string public constant name = "Tokendemo";
    uint256 public constant decimal = 18;

    uint256 internal constant tokenunit = 10 ** 18;
    uint256 internal constant maxtokens = 295297 * tokenunit;

    constructor() public {
        totalSupply_ = maxtokens;
        balances[msg.sender] = maxtokens;
    
    }
}