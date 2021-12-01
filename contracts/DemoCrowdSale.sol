pragma solidity ^0.4.24;

import "./CappedCrowdsale.sol";

contract DemoCrowdSale is CappedCrowdsale {

    uint256 internal constant ethCap = 1000 ether;
    uint256 internal constant oneEthToTokens = 100000;

    constructor(address _wallet, ERC20 _token) public 
       Crowdsale(oneEthToTokens, _wallet, _token)
       CappedCrowdsale(ethCap)
    {

    }  
}