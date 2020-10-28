contract A {
  function f() public virtual returns (uint) { g(); }
  function g() internal virtual { revert(); }
}
contract B is A {
  function f() public override returns (uint) { A.f(); }
  function g() internal override {}
}
// ----
// Warning 6321: (173-177): Unnamed return variable can remain unassigned. Add an explicit return with value to all non-reverting code paths or name the variable.
