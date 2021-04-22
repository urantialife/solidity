{ let z := mload(0) { let x := 1 x := 6 z := x } { let x := 2 z := x x := 4 } }
// ====
// stackOptimization: true
// ----
