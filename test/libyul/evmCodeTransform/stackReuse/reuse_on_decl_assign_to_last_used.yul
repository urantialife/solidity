{
    let x := 5
    let y := x // y should reuse the stack slot of x
    sstore(y, y)
}
// ====
// stackOptimization: true
// ----
// PUSH1 0x5
// DUP1
// SSTORE
