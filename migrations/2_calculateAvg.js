const CalculateAvg = artifacts.require("./CalculateAvg.sol");

module.exports = function(deployer) {
  deployer.deploy(CalculateAvg);
};
