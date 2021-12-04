pragma solidity >=0.5.0 < 0.8.10;

contract ZombieFactory {
    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;
    
    struct Zombie {
        string name;
        uint dna;
    }
}