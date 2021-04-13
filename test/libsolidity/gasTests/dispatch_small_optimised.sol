contract Small {
    uint public a;
    uint[] public b;
    function f1(uint x) public returns (uint) { a = x; b[uint8(msg.data[0])] = x; }
    fallback () external payable {}
}
// ====
// optimize: true
// optimize-runs: 2
// ----
// creation:
//   codeDepositCost: 61800
//   executionCost: 111
//   totalCost: 61911
// external:
//   fallback: 118
//   a(): 2261
//   b(uint256): 4585
//   f1(uint256): 46720
