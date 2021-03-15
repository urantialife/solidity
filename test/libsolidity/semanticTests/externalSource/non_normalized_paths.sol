==== ExternalSource: _non_normalized_paths/a.sol ====
==== ExternalSource: _non_normalized_paths//b.sol ====
==== ExternalSource: C/////c.sol=_non_normalized_paths/c.sol ====
==== ExternalSource: C/../////D/d.sol=_non_normalized_paths///d.sol ====
import "_non_normalized_paths/a.sol";
import "_non_normalized_paths//b.sol";
import "C/////c.sol";
import "C/../////D/d.sol";

contract Contract {
    A _a;
    B _b;
    C _c;
    D _d;
    constructor() {
        _a = new A();
        _b = new B();
        _c = new C();
        _d = new D();
    }
    function foo() public returns (uint) {
        return _a.foo() + _b.foo() + _c.foo() + _d.foo();
    }
}
// ====
// compileViaYul: also
// ----
// foo() -> 0x04f5
