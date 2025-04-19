- **Signing Transactions**
  - Signing a transaction ensures that only the owner of a wallet (via the private key) can authorize the movement of funds.
  - It provides **authentication** (verifying the sender) and **integrity** (ensuring the transaction hasn't been altered).
  - When a transaction is signed, a cryptographic signature is generated using the sender’s private key.
  - The network can verify this signature using the sender's public key, ensuring the transaction is legitimate.
  - A "one way" process. Someone with a private key signs a transaction by their private key being hashed with their transaction data.
  - Anyone can verify this new transaction hash with our public key.

- **Public / Private Keys**
  - Public and private keys form the core of blockchain security.
  - A **public key** is shared with others to receive transactions. [ Derived from private key, can be used by anyone to verify that a transaction came from us ]
  - A **private key** is kept secret and used to sign transactions, proving ownership. [ Only known to key holder ]

- **Layer 2 and Rollups**
  - Layer 2 solutions are built on top of a base blockchain (Layer 1) to improve scalability.
  - **Rollups** bundle multiple transactions off-chain and submit a single proof to the main chain, reducing load and increasing speed.

- **Decentralized Blockchain Oracles**
  - Oracles provide external data to smart contracts on the blockchain.
  - **Decentralized Oracles** aggregate data from multiple sources to ensure trustworthiness and prevent manipulation.

