### What is a Hash?
A **hash** is a fixed-length string generated from input data using a cryptographic hash function, such as SHA-256. Even a tiny change in the input produces a vastly different hash. Hashes are fundamental to blockchain security and immutability.

Example:
```
Input: "Hello"
SHA-256 Hash: 185f8db32271fe25f561a6fc938b2e264306ec304eda518007d1764826381969
```

- **HASH ALGORITHM →** *A function that computes data into unique hash.*

- **MINING →** *Process of finding the solution to the blockchain problem.*
  - Nodes get paid for mining blocks.
- **BLOCK →** *A list of transactions mined together.*
- **NONCE →** *A "number used once" to find the "solution" to the blockchain problem [ Transaction number for an account/address ]*


### How a Blockchain Works — Step by Step

1. **Transaction Initiation**  
   A user initiates a transaction (e.g., sending cryptocurrency).

2. **Transaction Broadcast**  
   The transaction is broadcast to a decentralized peer-to-peer (P2P) network.

3. **Validation by Nodes**  
   Network nodes (computers) validate the transaction using cryptographic rules (e.g., digital signatures, checking balances).

4. **Block Formation**  
   Validated transactions are grouped into a new block. The block contains:
   - The list of transactions
   - The hash of the previous block
   - A nonce (used for Proof of Work)
   - Timestamp and metadata

5. **Consensus Mechanism**  
   Nodes agree on the validity of the block using a consensus algorithm like:
   - **Proof of Work (PoW)**: Solving a complex cryptographic puzzle
   - **Proof of Stake (PoS)**: Validators are chosen based on stake

6. **Block Addition**  
   Once validated, the new block is added to the existing blockchain. The chain updates across all nodes.

7. **Ledger Update**  
   Every node in the network updates its copy of the blockchain, ensuring consistency and transparency.

### Key Concepts
- **Decentralized**: No central authority, all nodes hold a copy of the blockchain
- **Immutable**: Once added, data cannot be changed without altering all subsequent blocks
- **Transparent**: All transactions are publicly viewable and traceable
- **Secure**: Cryptographic algorithms ensure data integrity and authenticity

### Summary
Blockchains are decentralized digital ledgers that record transactions in linked blocks secured by cryptographic hashes. Through consensus mechanisms, these blocks are verified and added in a way that makes the entire chain tamper-proof and publicly auditable.
