object "level2" {
    code {
        datacopy(0, dataoffset("r"), datasize("r"))
        return(0,datasize("r"))
    }

    object "r" {
        code {
            calldatacopy(0x80,4,320)
            quickPart(0, 9)
            return(0x80, 320)

            function quickPart(low, high) {
                    if lt(low,high) {
                        let high1 := high
                        let pivotVal := mload(add(0x80,mul(div(add(low,high),2),32)))
                        let low1 := low
                        for {} true {} {
                            for {} lt(mload(add(0x80,mul(low1,32))),pivotVal) {} {low1 := add(low1,1)}
                            for {} gt(mload(add(0x80,mul(high1,32))),pivotVal) {} {high1 := sub(high1,1)} 
                            if iszero(lt(low1,high1)) {break}
                            let tmpLow := mload(add(0x80,mul(low1,32)))
                            let tmpOp := add(0x80,mul(high1,32))
                            mstore(add(0x80,mul(low1,32)), mload(tmpOp))
                            mstore(tmpOp, tmpLow)
                            low1 := add(low1,1)
                            high1 := sub(high1,1)
                    }
                    if lt(low,high1) {quickPart(low, high1)}
                    high1 := add(high1, 1)
                    if lt(high1,high) {quickPart(high1, high)}
                }
            }

        }
    }
}