import { ethers } from "hardhat";
// import { ColorBoard } from "../typechain";

async function main() {
  const [deployer] = await ethers.getSigners();

  console.log(`Deploying contracts with account: ${deployer.address}`);

  const ColoredBoardFactory = await ethers.getContractFactory("ColoredBoard");
  const ColoredBoard = await ColoredBoardFactory.deploy();

  await ColoredBoard.waitForDeployment();

  console.log(`ColoredBoard deployed to: ${ColoredBoard.target}`);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
