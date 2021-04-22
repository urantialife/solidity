{ for { let z := 0 } 1 { } { z := 8 let x := 3 } let t := 2 }
// ====
// stackOptimization: true
// ----
// PUSH1 0x0
// JUMPDEST
// POP
// PUSH1 0x8
// PUSH1 0x2
// JUMP
