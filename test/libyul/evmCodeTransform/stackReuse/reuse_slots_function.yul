{
    function f() -> x, y, z, t {}
    let a, b, c, d := f() let x1 := 2 let y1 := 3 mstore(x1, a) mstore(y1, c)
}
// ====
// stackOptimization: true
// ----
// PUSH1 0x0
// PUSH1 0x2
// DUP2
// SWAP1
// MSTORE
// PUSH1 0x3
// MSTORE
