// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;


contract OwnerControlledStorage {
    uint16 private  Value ;
    address private Owner ;
    event registeEvent(address indexed _user,uint16 _id);

    modifier OnlyOwner(){
        require(msg.sender== Owner,"Not Authorized");_;
    }

    constructor (){
        Owner = msg.sender;
    }

    function setValue(uint16 _value)external OnlyOwner{
        require(_value!=Value,"Value is already set to this value");
        Value = _value ;
        emit registeEvent(Owner,_value);
    }

    function getValue()public view returns(uint16){
        return Value ;
    }
}
