object "level4" {
    code {
        datacopy(0, dataoffset("r"), datasize("r"))
        return(0,datasize("r"))
    }

    object "r" {
        code {
            sstore(0x03, calldataload(4))
        }
    }
}