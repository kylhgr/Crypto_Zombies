pragma solidity >=0.5.0 < 0.8.10;

contract ZombieFactory {
// Adding event, front end will pull result once the zombie is created
    event NewZombie(uint zombieID, string name, uint dna);

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;
    
    struct Zombie {
        string name;
        uint dna;  
    }
    Zombie[] public zombies; //Stores the team of zombies in an array Zombie

    //Create zombies
    function _createZombie (string memory _name, uint _dna) private {
        zombies.push(zombie(_name, _dna));
        emit NewZombie(zombieID, name, dna);
        
    }

    //Generate random DNA for zombies
    function _generateRandomDna(string memory _str) private view returns (uint) {
        uint rand = uint(keccak256(abi.enocdePacked(_str)));
        return rand % dnaModulus;

    }
    //Create a random zombie
    function createRandomZombie(string memory _name) public {
        uint randDna = _generateRandomDna(_name);
        _createZombie(_name, randDna);
    }
    
}