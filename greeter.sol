pragma solidity ^0.4.8;
contract Greeter {
    uint value;
    event onSetValue(uint value);
    function Greeter() {
        value = 1;
    }

    function getValue() payable public returns (uint){
        msg.sender.transfer(1000);
        return value;
    }

    function setValue(uint v) payable public {
        value = v;
        onSetValue(v);
    }
}
