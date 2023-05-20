## Level 2 - Sorting an Array
Write a function that sorts an array in ascending order and returns the result. The array will be a fixed of 10 but the contents random. Your solution should implement the following interface:

    interface Isolution2 {
        function solution(uint256[10] calldata unsortedArray) external returns (uint256[10] memory sortedArray);
    }