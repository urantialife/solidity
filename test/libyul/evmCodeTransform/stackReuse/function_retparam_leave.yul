{
    function f() -> x { pop(address()) leave pop(callvalue()) }
}
// ====
// stackOptimization: true
// ----
