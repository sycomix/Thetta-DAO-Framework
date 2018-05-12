pragma solidity ^0.4.15;

import "./IWeiReceiver.sol";
import "./IWeiSplitter.sol";
import "./IWeiDestination.sol";

import "zeppelin-solidity/contracts/math/SafeMath.sol";
import "zeppelin-solidity/contracts/ownership/Ownable.sol";

//////////////////////////////////////////////////////
// WeiFund can store funds until 'flush' is called (pull model)
// This is a terminal item, that has no children
contract WeiFund is IWeiReceiver, IWeiDestination, Ownable {
	address public output;

	// Process funds, send it to the Output
	function flush() public onlyOwner{
		// TODO: check for vulnerabilities
		output.transfer(msg.value);
	}

// IWeiReceiver:
	function getMinWeiNeeded()constant public returns(uint){
		// TODO:
		return 0;
	}
	function getTotalWeiNeeded(uint _inputWei)constant public returns(uint){
		// TODO:
		return 0;
	}
	function getTotalPercentsDiv100Needed()constant public returns(uint){
		// TODO:
		return 0;
	}
	function isNeedsMoney()constant public returns(bool){
		// TODO:
		return false;
	}

	// WeiFund accepts ETH from any address
	// WeiFund should hold funds until 'flush' is called
	function processFunds(uint _currentFlow) public payable{
		// TODO:
	}

	function()public {}
}