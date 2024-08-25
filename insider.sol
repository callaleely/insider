// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Interface for ERC-20 tokens
interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
}

contract TokenBalanceChecker {
    
    // Function to check the balance of a token for a given address
    function getTokenBalance(address _tokenAddress, address _userAddress) public view returns (uint256) {
        // Create an instance of the token contract
        IERC20 token = IERC20(_tokenAddress);
        
        // Return the balance of the user address
        return token.balanceOf(_userAddress);
    }
}
