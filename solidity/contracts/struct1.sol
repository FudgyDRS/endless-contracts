/*
  A simple test for seeing what do structs actually do:
    What do you think the results are? How do these two structs end up being initalized and what is the gas difference?
*/

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

contract testContract {
    mapping(address => Item) public owner_list;

    struct Item {
        address         owner;
        string          item_type;
        bool            set_to_sell;
        uint            ask_price;
        uint            purchase_price;
    }

    function setOwner(address _address) public {
        owner_list[_address].owner = _address;
    }

    function setOwnerNewObject(address _address) public {
        owner_list[_address] = Item(_address, "", false, 0, 0);
    }
}
