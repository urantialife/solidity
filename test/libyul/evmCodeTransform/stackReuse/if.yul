// z is only removed after the if (after the jumpdest)
{ let z := mload(0) if z { let x := z } let t := 3 }
// ====
// stackOptimization: true
// ----
