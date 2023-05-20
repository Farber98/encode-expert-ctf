// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract Level_5_Solution_Yul {
    function solution(
        bytes32 b,
        bytes32 ex,
        bytes32 modu
    ) external returns (bytes32 result) {
        assembly {
            mstore(0x00, 0x20)
            mstore(0x20, 0x20)
            mstore(0x40, 0x20)

            mstore(0x60, b)
            mstore(0x80, ex)
            mstore(0x100, modu)

            let success := call(gas(), 0x05, 0x00, 0x00, 0xc0, 0x00, 0x20)

            result := mload(0x00)
        }
    }
}
