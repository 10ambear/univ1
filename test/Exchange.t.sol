pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "src/Exchange.sol";

/**
@dev run "forge test -vvv --match-contract TestExchange"
*/
contract TestExchange is Test {

	// These are constants that define the initial amounts of tokens to mint for different actors in the contract.
	uint256 public constant USER_DEPOSIT = 10 ether;

	function setUp() public {

		deployer = address(1);
		user1 = address(2);

		vm.deal(user1, USER_DEPOSIT);

		// deploy Exchange contract
		vm.prank(deployer);
		exchange = new Exchange();

	}

}