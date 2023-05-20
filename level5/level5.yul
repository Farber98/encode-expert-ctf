object "level5" {
    code {
        datacopy(0, dataoffset("r"), datasize("r"))
        return(0,datasize("r"))
    }

    object "r" {
        code {
                mstore(0x00, 0x20)
                mstore(0x20, 0x20)
                mstore(0x40, 0x20)
                mstore(0x60, calldataload(4))
                mstore(0x80, calldataload(36))
                mstore(0x100, calldataload(68))
                pop(call(gas(), 0x05, 0x00, 0x00, 0xc0, 0x00, 0x20))
                return(0x00,32)
        }
    }
}