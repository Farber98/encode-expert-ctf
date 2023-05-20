// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract Level_3_Solution {
    function solution(address addr) external view returns (uint256) {
        assembly {
            mstore(0x00, extcodesize(addr))
            return(0x00, 32)
        }
    }
}
