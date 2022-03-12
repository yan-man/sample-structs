//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Sample {
  struct SampleStruct1 {
    uint256 id;
    uint256 value;
    string name;
    bool isCreated;
  }
  SampleStruct1 public sample1;

  struct SampleStruct2 {
    uint256 id;
    uint256[3] values;
  }
  SampleStruct2 public sample2;

  constructor() {}

  function setSample1() public {
    // method 1
    sample1.id = 1;
    sample1.value = 1;
    sample1.name = "myname";
    sample1.isCreated = true;

    // method 2
    sample1 = SampleStruct1({
      id: 2,
      value: 2,
      name: "myname",
      isCreated: true
    });

    // method 3
    sample1 = SampleStruct1(3, 6, "myname", false);
  }

  function setSample2() public {
    // method 1
    sample2.id = 1;
    sample2.values = [1, 3, 4];

    // method 2
    sample2 = SampleStruct2({ id: 2, values: [uint256(1), 2, 3] });

    // method 3
    sample2 = SampleStruct2(3, [uint256(5), 6, 7]);
  }
}
