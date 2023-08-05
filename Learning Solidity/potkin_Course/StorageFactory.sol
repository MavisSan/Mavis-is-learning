// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public listofsimplestoragecontracts;


    function createSimpleStorageContract() public {
       SimpleStorage newmySimpleStorage = new SimpleStorage();
        listofsimplestoragecontracts.push(newmySimpleStorage);
    }

    function sfStore(uint256 _simplestorageindex , uint256 _newsimplestoragenumber)  public {
        SimpleStorage mysimplestorage = SimpleStorage(listofsimplestoragecontracts[_simplestorageindex]);
        mysimplestorage.store(_newsimplestoragenumber);
    }

    function sfGet(uint256 _simplestorageindex) public view returns(uint256){
        SimpleStorage mysimplestorage = SimpleStorage(listofsimplestoragecontracts[_simplestorageindex]);
        return mysimplestorage.retrive();
    }

}
