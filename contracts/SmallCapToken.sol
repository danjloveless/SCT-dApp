// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract SmallCapToken is ERC20, Ownable, ERC20Pausable, ERC20Burnable {
    uint256 private constant _initialSupply = 21_000_000 * 10 ** 18;

    constructor() ERC20("Small Cap Token", "SCT") Ownable(msg.sender) {
        _mint(msg.sender, _initialSupply);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function _update(address from, address to, uint256 value) 
        internal 
        override(ERC20, ERC20Pausable)
    {
        super._update(from, to, value);
    }
}
