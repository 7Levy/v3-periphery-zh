// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.7.6;
pragma abicoder v2;

import '../RouterPositions.sol';
import '../RouterImmutableState.sol';

contract MockTimeRouterPositions is RouterPositions, RouterImmutableState {
    uint256 time;

    constructor(
        address _factory,
        address _WETH9,
        address _WETH10
    ) RouterImmutableState(_factory, _WETH9, _WETH10) {}

    function _blockTimestamp() internal view override returns (uint256) {
        return time;
    }

    function setTime(uint256 _time) external {
        time = _time;
    }
}