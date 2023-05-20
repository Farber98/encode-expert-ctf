// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract Level_6_Solution {
    function solution(
        bytes32 messageHash,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external pure returns (address) {
        bytes32 prefixedHash = keccak256(
            abi.encodePacked("\x19Ethereum Signed Message:\n32", messageHash)
        );
        return ecrecover(prefixedHash, v, r, s);
    }
}
