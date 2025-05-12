# Owner-Only Value Storage Smart Contract

This is a simple Solidity smart contract that allows the storage and retrieval of a value, with access restricted to the contract owner only. The contract provides two main functionalities:

1. **Store a Value**: Only the contract owner can store a new value in the contract.
2. **Retrieve the Value**: The contract owner can retrieve the stored value.

## Features

- **Owner-Only Access**: Only the owner of the contract (the address that deployed it) has the ability to set or get the stored value.
- **Simple Storage**: The contract stores a single `uint16` value, and the value is accessible only by the owner.
- **Events**: Every time a value is updated, an event is emitted to log the update.

## Contract Functions

### `setValue(uint16 _value)`
- **Description**: Stores a new `uint16` value.
- **Access Control**: Only the contract owner can call this function.
- **Event**: Emits an event (`registeEvent`) when the value is updated.

### `getValue()`
- **Description**: Retrieves the current stored value.
- **Access Control**: Only the contract owner can call this function.

## Example Usage

1. **Deploy the contract**: When you deploy the contract, the sender (who deploys the contract) will automatically be set as the owner.
2. **Store a value**: The owner can call `setValue(42)` to store the value `42`.
3. **Retrieve the value**: The owner can call `getValue()` to retrieve the stored value.

## Prerequisites

- **Solidity**: Version `^0.8.24`.
- **Ethereum**: Deploy on Ethereum test networks (Rinkeby, Ropsten) or mainnet.

## How to Deploy

1. Open [Remix IDE](https://remix.ethereum.org/).
2. Copy and paste the smart contract code into a new Solidity file.
3. Compile the contract using the Solidity compiler in Remix.
4. Deploy the contract to an Ethereum test network or mainnet using Remix or other Ethereum deployment tools.
5. Once deployed, interact with the contract by calling `setValue` and `getValue` as the owner.



## Author

[LostBrain404]
