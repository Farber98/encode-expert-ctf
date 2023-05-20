// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract Level_2_Solution_Solidity {
    function sort(uint[10] memory data) public pure returns (uint[10] memory) {
        quickSort(data, int(0), int(data.length - 1));
        return data;
    }

    function quickSort(uint[10] memory arr, int left, int right) private pure {
        int i = left;
        int j = right;
        if (i == j) return;
        uint pivot = arr[uint(left + (right - left) / 2)];
        while (i <= j) {
            while (arr[uint(i)] < pivot) i++;
            while (pivot < arr[uint(j)]) j--;
            if (i <= j) {
                (arr[uint(i)], arr[uint(j)]) = (arr[uint(j)], arr[uint(i)]);
                i++;
                j--;
            }
        }
        if (left < j) quickSort(arr, left, j);
        if (i < right) quickSort(arr, i, right);
    }
}

contract Level_2_Solution_Yul {
    function solution(
        uint256[10] calldata
    ) external pure returns (uint256[10] memory) {
        assembly {
            calldatacopy(0x80, 4, 320)
        }
        quickPart(0, 9);
        assembly {
            return(0x80, 320)
        }
    }

    function quickPart(uint256 low, uint256 high) private pure {
        if (low < high) {
            uint256 high1 = high;

            assembly {
                let pivotVal := mload(
                    add(0x80, mul(div(add(low, high), 2), 32))
                )
                let low1 := low
                for {

                } true {

                } {
                    for {

                    } lt(mload(add(0x80, mul(low1, 32))), pivotVal) {

                    } {
                        low1 := add(low1, 1)
                    }
                    for {

                    } gt(mload(add(0x80, mul(high1, 32))), pivotVal) {

                    } {
                        high1 := sub(high1, 1)
                    }
                    if iszero(lt(low1, high1)) {
                        break
                    }
                    let tmpLow := mload(add(0x80, mul(low1, 32)))
                    let tmpOp := add(0x80, mul(high1, 32))
                    mstore(add(0x80, mul(low1, 32)), mload(tmpOp))
                    mstore(tmpOp, tmpLow)
                    low1 := add(low1, 1)
                    high1 := sub(high1, 1)
                }
            }

            if (low < high1) quickPart(low, high1);
            assembly {
                high1 := add(high1, 1)
            }
            if (high1 < high) quickPart(high1, high);
        }
    }
}
