{
    let x := 5
    let y := add(x, 2) // y should reuse the stack slot of x
    sstore(y, y)
}
// ====
// stackOptimization: true
// ----
// PUSH1 0x7
// DUP1
// SSTORE
