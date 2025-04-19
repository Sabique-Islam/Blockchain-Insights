// Tells everyone this code uses the MIT license
// SPDX-License-Identifier: MIT

pragma solidity 0.5.11;
// These are other ways we could specify versions:
// pragma solidity ^0.8.0; --> Version: At least 0.8.0
// pragma solidity >=0.8.0 <0.9.0; --> Version: Greater than or equal to 0.8.0 and less than 0.9.0

// This is like creating a blueprint for our contract named SimpleStorage
contract SimpleStorage {

    // Declares a variable that can hold a number (uint256 means unsigned integer with 256 bits)
    // This will be automatically initialized to 0
    uint256 favoriteNumber;

    // Creating a custom data type (like creating a template for a person)
    // Each person will have a favorite number and a name
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    // Array of numbers
    // uint256[] public anArray;

    // Creates an array that can hold many People structs
    // 'public' means anyone can read this array
    People[] public people;

    // Creates a way to look up a person's favorite number using their name
    // Like a phone book: look up number by name
    mapping(string => uint256) public nameToFavoriteNumber;

    // Function to store a favorite number
    // 'public' means anyone can call this function
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    // Function to read the favorite number
    // 'view' means this function just reads data (doesn't change anything)
    // 'returns' specifies what kind of data it gives back
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }

    // Function to add a new person to our list
    // 'memory' tells Solidity to temporarily store the name string in memory
    function addPerson(string memory _name, uint256 _favoriteNumber) public {

        // Adds a new Person to our array with the given name and number
        people.push(People(_favoriteNumber, _name));

        // Also stores the person's favorite number in our name-to-number mapping
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
