import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const deployGovernanceToken: DeployFunction = async (hre: HardhatRuntimeEnvironment) => {
    console.log("hello from deployGovernanceToken");
}

export default deployGovernanceToken;