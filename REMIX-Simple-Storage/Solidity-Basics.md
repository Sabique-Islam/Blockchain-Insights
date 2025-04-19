# Basic Solidity Guide

## 🧱 Types & Declaring Variables

### 🔢 Data Types:
- `uint256`: Unsigned integer (256 bits).
- `int256`: Signed integer (256 bits).
- `bool`: Boolean type, holds `true` or `false`.
- `string`: UTF-8 encoded dynamic string.
- `address`: Ethereum address (20 bytes).
- `bytes32`: Fixed-size byte array (32 bytes).

### ⚙️ Solidity Types:
Solidity supports both value and reference types. Value types include `uint`, `int`, `bool`, `address`, `bytes1` to `bytes32`, and enums. Reference types include arrays, structs, and mappings.

### 🔍 Bits and Bytes:
- Each `uintN` or `intN` type is N bits long (where N is a multiple of 8 up to 256).
- `bytesN` stores fixed-length binary data.

### 🌱 Default Initializations:
Variables are automatically initialized to default values:
- `uint`/`int` → 0
- `bool` → false
- `string` → ""
- `address` → 0x000...0

### 💬 Comments:
- Single-line: `// This is a comment`
- Multi-line: `/* This is a
  multiline comment */`

---

## 🔧 Functions

### 📥 Declaring Functions:
```solidity
function myFunction() public returns (uint256) {
    return 1;
}
```

### 🚀 Deploying a Contract:
Smart contracts are deployed to the blockchain and get a unique address.

### 🏦 Contract Addresses:
Every smart contract has an address just like an Ethereum wallet. You can interact with contracts through their address.

### 📝 Calling Public State-Changing Functions:
You need to send a transaction, which costs gas, to change state.

### 🔐 Visibility Keywords:
- `public`: Accessible from anywhere.
- `private`: Accessible only inside the contract.
- `internal`: Accessible inside the contract and derived contracts.
- `external`: Only external calls allowed.

### ⛽ Gas - Example:
Calling a function that modifies state (like updating a variable) consumes gas.

### 📦 Scope:
Variables declared inside functions are only accessible within those functions.

### 👁️ View & 🧮 Pure Functions:
- `view`: Can read state but not modify it.
- `pure`: Cannot read or modify state.

---

## 🧱 Arrays & Structs

### 🧩 Structs:
User-defined types that group related variables.
```solidity
struct Student {
    string name;
    uint age;
}
```

### 🗄️ Storage:
Data saved on the blockchain permanently (costs gas).

### 📚 Arrays:
- Can be fixed-size or dynamic.
- Example:
```solidity
uint[] dynamicArray;
uint[5] fixedArray;
```

### ➕ push Function:
Adds a new element to the end of a dynamic array.
```solidity
dynamicArray.push(10);
```

---

## 🚫 Compiler Errors and Warnings

### ⚠️ Yellow: Warnings
Usually okay, but should be checked.

### ❌ Red: Errors
Must be fixed; contract won’t compile otherwise.

---

## 🧠 Memory, Storage, Calldata (Intro)

### 🗃️ 6 Data Locations:
1. *`calldata`: Immutable, temporary data (function arguments).
2. *`memory`: Temporary, modifiable data (used inside functions).
3. *`storage`: Persistent data (written to blockchain).
4. `code`: The contract’s bytecode.
5. `logs`: Events emitted during execution.
6. `stack`: Stores small data and execution context.

---

## 🔁 Mappings

### 📌 Definition:
Key-value store similar to a hash table.
```solidity
mapping(address => uint256) balances;
```

### 🧭 Usage:
Set value:
```solidity
balances[msg.sender] = 100;
```
Get value:
```solidity
uint balance = balances[msg.sender];
```

Mappings cannot be iterated and do not have a length.

---

### **Tip -->** 
> Practice by writing simple contracts and deploying them in tools like **[Remix IDE](https://remix.ethereum.org)!**