# Basic NFT - Hardhat Project

This project demonstrates a basic NFT using Hardhat use case. It comes with a solidity contract, a javascript that deploys that contract into Rinkeby Test  net

## Pre-requisites:

## Install hardhat and its dependencies
npm install --save-dev hardhat
npx hardhat-> select basic project. This will install the following: npm install --save-dev @nomiclabs/hardhat-waffle@^2.0.0 ethereum-waffle@^3.0.0 chai@^4.2.0 @nomiclabs/hardhat-ethers@^2.0.0 ethers@^5.0.0
npm install @openzeppelin/contracts

## Run NFT project
Compile the solidity contract using 

solc --bin --abi -o ./build contracts/MyEpicNFT.sol

Setup Alchemy account

Create a .env file and add the test net app URL and private key

Change the <<Network>> section to reflect the test net environment variables in 'Hardhat.config.js' file

Open another terminal and Run npx hardhat run scripts/deploy.js --network <<Network name>>
