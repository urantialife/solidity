{ let a, b, c, d let x := 2 let y := 3 mstore(x, a) mstore(y, c) }
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
