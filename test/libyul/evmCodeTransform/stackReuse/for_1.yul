{ for { let z := 0 } 1 { } { let x := 3 } let t := 2 }
// ====
// stackOptimization: true
// ----
// JUMPDEST
// PUSH1 0x0
// JUMP
