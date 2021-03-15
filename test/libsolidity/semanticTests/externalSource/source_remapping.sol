==== ExternalSource: ExtSource=_external/external.sol ====
import "ExtSource";
contract C {
    External _external;
    constructor() {
        _external = new External();
    }
    function foo() public returns (uint) {
        return _external.foo();
    }
}
// ====
// compileViaYul: also
// ----
// foo() -> 1234
