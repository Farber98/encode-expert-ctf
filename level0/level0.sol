// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

contract Level_0_Solution_Solidity {
    function solution() external pure returns (uint) {
        return 42;
    }
}

contract Level_0_Solution_Yul {
    function solution() external pure returns (uint) {
        assembly {
            mstore(0x00, 0x2A)
            return(0x00, 0x20)
        }
    }
}
