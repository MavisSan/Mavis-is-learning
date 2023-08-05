// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {

    uint256 public myFavoriteNumber;

    struct person {
        uint256 favoriteNumber ;
        string name;
    }

    person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function addperson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(person(_favoriteNumber,_name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber  = _favoriteNumber;

    }
    
    function retrive() public view returns (uint256){
        return myFavoriteNumber;
    }
}
