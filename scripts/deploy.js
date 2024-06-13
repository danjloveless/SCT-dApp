const { ethers } = require("hardhat");

async function main() {
  const [deployer] = await ethers.getSigners();

  console.log("Deploying contracts with the account:", deployer.address);

  const SmallCapToken = await ethers.getContractFactory("SmallCapToken");
  const smallCapToken = await SmallCapToken.deploy();

  await smallCapToken.deployed();

  console.log("Small Cap Token deployed to:", smallCapToken.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
