const MyContract = artifacts.require("MyToken");

module.exports = function(deployer) {
  deployer.deploy(MyContract);
};
