pragma solidity ^0.4.15;


contract MyContract {
    string word = "World";
uint balance = 10;
address client;
    event balanceChanged(string message,uint balanceValue);

    /* Constructor */
    function MyContract() public {
    client = msg.sender;
    }
    modifier ifClient(){
        if (msg.sender != client){
            throw;
        }
        _;
    }

    function setBalance() payable {
        balance = this.balance;
        balanceChanged("balace changed Ya dimo hamdy",this.balance);
    }

    function getCreator() ifClient constant returns(address){
        return client;
    }


}
