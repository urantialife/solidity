==== ExternalSource: /ExtSource.sol=_external/external.sol ====
import "/ExtSource.sol";
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
