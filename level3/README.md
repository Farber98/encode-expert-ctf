## Level 3 - codeSize
Using the Isolution3 interface write a function that takes an address and returns the codeSize of that address as a uint256.

    interface Isolution3 {
        function solution(address addr) external view 
        returns (uint256 codeSize);
    }
