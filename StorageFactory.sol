// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContact() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function storageFactoryStore(
        uint256 _simpleStorageIndex,
        uint256 _simpleStorageNumber
    ) public {
        SimpleStorage simpleStorage = SimpleStorage(
            address(simpleStorageArray[_simpleStorageIndex])
        );
        simpleStorage.store(_simpleStorageNumber);
    }

    function storageFactoryGet(uint256 _simpleStorageIndex)
        public
        view
        returns (uint256)
    {
        SimpleStorage simpleStorage = SimpleStorage(
            address(simpleStorageArray[_simpleStorageIndex])
        );
        return simpleStorage.retreive();
    }
}
