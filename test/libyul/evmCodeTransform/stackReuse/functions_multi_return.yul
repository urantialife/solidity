{
    function f(a, b) -> t { }
    function g() -> r, s { }
    let x := f(1, 2)
    x := f(3, 4)
    let y, z := g()
    y, z := g()
    let unused := 7
}
// ====
// stackOptimization: true
// ----
