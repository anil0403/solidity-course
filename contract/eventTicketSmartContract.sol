//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract EventTicket {
    //state variables
    uint256  numberOfTicket;
    uint256  ticketPrice;
    uint256  totalAmount;
    uint256  startAt;
    uint256  endAt;
    uint256  timeRange;
    string  message = "Buy your first Event Ticket";

    constructor(uint256 _ticketPrice) {
        ticketPrice = _ticketPrice;
        startAt = block.timestamp;
        endAt = block.timestamp + 7 days;
        timeRange = (endAt - startAt) / 60 / 60 / 24; // in seconds
    }

    function buyTicker(uint256 _value) public returns (uint256 ticketId) {
        numberOfTicket++;
        totalAmount += _value;
        ticketId = numberOfTicket;
    }

    function getTotalAmount() public view returns (uint256) {
        return totalAmount;
    }
}
