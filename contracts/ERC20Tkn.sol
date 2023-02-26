pragma solidity ^0.8.0;
import "..//node_modules/@Openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";

import "..//node_modules/@Openzeppelin/contracts/access/Ownable.sol";

contract MyToken is  ERC20Capped, Ownable{

    constructor()  ERC20("MyToken" , "MTK")  ERC20Capped(1000*10**18){

       // _mint(msg.sender, 1000000);


        
    }
    function minting(address rec, uint256 amount)external onlyOwner{

    _mint(rec, amount);

    }

    function burn(uint256 amount) public virtual {
        _burn(_msgSender(), amount);
    }

function burnFrom(address account, uint256 amount) public virtual {
        _spendAllowance(account, _msgSender(), amount);
        _burn(account, amount);
    }
    

}