object "level0" {
    code {
        // constructor
        // copy the code from "runtime". We will copy all that size.
        datacopy(0, dataoffset("runtime"), datasize("runtime"))
        // return from 0 up to runtime to miner.
        return(0,datasize("runtime"))
    }

    object "runtime" {
        code {
            // runtime code. Functions that can be called to interact with smart contract.
            mstore(0x00, 0x2A)
            return(0x00, 0x20)
        }
    }
}