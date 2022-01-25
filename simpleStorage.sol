// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage {

    uint256  favoriteNumber;
    // bool favoriteBool = true;
    // string favoriteString = "String";
    // address favoriteAddress;
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;
    People public person = People({
        favoriteNumber : 2,
        name : "Anthony"
    });

    function store (uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    function retreive() public view returns(uint256){
        return favoriteNumber;
    }
    function addPerson( string memory _name, uint256 _favoriteNumber) public{
        people.push(People({
                favoriteNumber :  _favoriteNumber,
                name : _name
        }));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}