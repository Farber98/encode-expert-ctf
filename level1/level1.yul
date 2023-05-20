object "level1" {
    code {
        datacopy(0, dataoffset("r"), datasize("r"))
        return(0,datasize("r"))
    }

    object "r" {
        code {
            mstore(0x00, add(calldataload(4), calldataload(132)))
            mstore(0x20, add(calldataload(36), calldataload(164)))
            mstore(0x40, add(calldataload(68), calldataload(196)))
            mstore(0x60, add(calldataload(100), calldataload(228)))
            return(0x00, 128)
        }
    }
}
    