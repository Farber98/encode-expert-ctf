## Level 5 - Modular Exponentiation
Using the Isolution5 interface calculate Modular Exponentiation (base**exp % mod). Implementing it from scratch would take too much gas so you will need to use the precompiled contract at address 0x05

    interface Isolution5 {

        function solution(
            bytes32 b,
            bytes32 ex, 
            bytes32 mod) 
        external returns (
            bytes32 result
        );

    }