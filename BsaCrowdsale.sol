// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/AllowanceCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/TimedCrowdsale.sol";

contract HuiWanCrowdsale is Crowdsale, AllowanceCrowdsale, TimedCrowdsale {
    /**
     * 构造函数
     *
     * Requirements:
     *
     * - `rate` 兑换比率
     * - `wallet` 接受 ETH 收益人地址
     * - `token` 代币地址
     * - `tokenWallet` 代币从这个地址发送
     * - `openingTime` 众筹开始时间
     * - `closingTime` 众筹结束时间
     */
    constructor (
        uint256 rate,
        address payable wallet,
        IERC20 token, address tokenWallet,
        uint256 openingTime,
        uint256 closingTime
    )
    Crowdsale(rate, wallet, token)
    AllowanceCrowdsale(tokenWallet)
    TimedCrowdsale(openingTime, closingTime)
    public
    {

    }
}