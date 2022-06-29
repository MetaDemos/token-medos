//SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.0;

import "../Coin.sol";

contract CoinMock is Coin {
    function setRoleAdmin(bytes32 roleId, bytes32 adminRoleId) external {
        _setRoleAdmin(roleId, adminRoleId);
    }

    function senderProtected(bytes32 roleId) external onlyRole(roleId) {}
}
