pragma solidity 0.5.11;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";


/**
 * @title BalanceChecker
 */
contract BalanceChecker {
  IERC20 internal constant _DDAI = IERC20(
    0x00000000001876eB1444c986fD502e618c587430 // mainnet
  );

  IERC20 internal constant _DUSDC = IERC20(
    0x00000000008943c65cAf789FFFCF953bE156f6f8 // mainnet
  );

  IERC20 internal constant _DAI = IERC20(
    0x6B175474E89094C44Da98b954EedeAC495271d0F // mainnet
  );

  IERC20 internal constant _USDC = IERC20(
    0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48 // mainnet
  );

  IERC20 internal constant _SAI = IERC20(
    0x89d24A6b4CcB1B6fAA2625fE562bDD9a23260359 // mainnet
  );

  IERC20 internal constant _CSAI = IERC20(
    0xF5DCe57282A584D2746FaF1593d3121Fcac444dC // mainnet
  );

  IERC20 internal constant _CDAI = IERC20(
    0x5d3a536E4D6DbD6114cc1Ead35777bAB948E3643 // mainnet
  );

  IERC20 internal constant _CUSDC = IERC20(
    0x39AA39c021dfbaE8faC545936693aC917d5E7563 // mainnet
  );

  function getBalances(address wallet) external view returns (
  	uint256 dDaiBalance,
  	uint256 dUSDCBalance,
  	uint256 daiBalance,
  	uint256 usdcBalance,
  	uint256 saiBalance,
  	uint256 cSaiBalance,
  	uint256 cDaiBalance,
  	uint256 cUSDCBalance,
  	uint256 etherBalance
  ) {
    dDaiBalance = _DDAI.balanceOf(wallet);
    dUSDCBalance = _DUSDC.balanceOf(wallet);
    daiBalance = _DAI.balanceOf(wallet);
    usdcBalance = _USDC.balanceOf(wallet);
    saiBalance = _SAI.balanceOf(wallet);
    cSaiBalance = _CSAI.balanceOf(wallet);
    cDaiBalance = _CDAI.balanceOf(wallet);
    cUSDCBalance = _CUSDC.balanceOf(wallet);
    etherBalance = wallet.balance;
  }
}