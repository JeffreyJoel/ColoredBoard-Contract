// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract ColoredBoard {
    mapping (uint8 => mapping(uint8 => uint8)) public board;

    function setColor(uint8 x, uint8 y, uint8 colorId) public {
        require(x >= 1 && x <= 7, "x coordinate out of bounds");
        require(y >= 1 && y <= 5, "y coordinate out of bounds");
        require(colorId >= 1 && colorId <= 4, "Invalid color ID");

        board[x][y] = colorId;
    }

    function getColor(uint8 x, uint8 y) public view returns (uint8) {
        require(x >= 1 && x <= 7, "x coordinate out of bounds");
        require(y >= 1 && y <= 5, "y coordinate out of bounds");

        return board[x][y];
    }
}