// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

contract Level_1_Solution_Solidity {
    function solution(
        uint256[2][2] calldata x,
        uint256[2][2] calldata y
    ) external pure returns (uint256[2][2] memory finalArray) {
        for (uint i = 0; i < 2; ) {
            for (uint j = 0; j < 2; ) {
                finalArray[i][j] = x[i][j] + y[i][j];
                unchecked {
                    j++;
                }
            }
            unchecked {
                i++;
            }
        }
        return finalArray;
    }
}

contract Level_1_Solution_Yul {
    function solution(
        uint256[2][2] calldata,
        uint256[2][2] calldata
    ) external pure returns (uint256[2][2] calldata) {
        assembly {
            // Matrix visualization:
            // [32B, 32B]
            // [32B, 32B] = 128B total

            // Get free memory pointer. As each elem has 32B size, we will increment freePt by 32 each time.
            // x starts with an offset of 4B to calldata.
            // Store x[0][0] + y[0][0] in freePt
            mstore(0x00, add(calldataload(4), calldataload(132)))
            // Store x[0][1] + y[0][1] in freePt + 32B
            mstore(0x20, add(calldataload(36), calldataload(164)))
            // Store x[1][0] + y[1][0] in freePt + 64B
            mstore(0x40, add(calldataload(68), calldataload(196)))
            // Store x[1][1] + y[1][1] in freePt + 96B
            mstore(0x60, add(calldataload(100), calldataload(228)))
            // Return the 128B of the array, grabbing from freePt.
            return(0x00, 128)
        }
    }
}
