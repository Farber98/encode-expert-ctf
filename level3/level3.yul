object "level3" {
    code {
        datacopy(0, dataoffset("r"), datasize("r"))
        // return from 0 up to runtime to miner.
        return(0,datasize("r"))
    }

    object "r" {
        code {
            mstore(0x00, extcodesize(addr))
            return(0x00, 32)
        }
    }
}