const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Sample Struct Contract", function () {
  let sample;
  beforeEach(async function () {
    const Sample = await ethers.getContractFactory("Sample");
    sample = await Sample.deploy();
    await sample.deployed();
  });
  it("Should set and get sample1, based on SampleStruct1", async function () {
    await sample.setSample1();
    const { id, value, name, isCreated } = { ...(await sample.sample1()) };
    console.log(id);
    console.log(name);
    console.log(value);
    console.log(isCreated);
    // console.log(await sample.sample1()); // uncomment to see raw getter output
  });
  it("Should set and get sample2, based on SampleStruct2", async function () {
    await sample.setSample2();
    const id = await sample.sample2();
    console.log(id);
  });
});
