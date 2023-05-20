# Level 0 - Return 42 (tutorial)
This level is really simple. Use the interface bellow to write a smart contract. Your contract should contain a function called solution that returns a uint8. In this case the function body logic is very simply as the answer is always 42.

Interface:
    
    // SPDX-License-Identifier: UNLICENSED
    pragma solidity 0.8.17;

    interface Isolution {
        function solution() external pure returns (uint8);
    }

Solution:
To solve we need write the function to return the correct answer. In this case we would just need to write return 42

    // SPDX-License-Identifier: UNLICENSED
    pragma solidity 0.8.17;

    contract Level_0_Solution {

        function solution() external pure returns(uint8){
            return 42; // The part you will be implementing
        }
        
    }



