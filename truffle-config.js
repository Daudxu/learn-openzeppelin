module.exports = {
  networks: {
    //开发测试网络
    development: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "*"
    },
    // ropsten测试网络，mnemonic为账户的助记词或者私钥 https://www.rinkeby.io/#geth
    ropsten: {
      provider: () => new HDWalletProvider(mnemonic, `https://ropsten.infura.io/v3/YOUR-PROJECT-ID`),
      network_id: 3,       // Ropsten's id
      gas: 5500000,        // Ropsten has a lower block limit than mainnet
      confirmations: 2,    // # of confs to wait between deployments. (default: 0)
      timeoutBlocks: 200,  // # of blocks before a deployment times out  (minimum/default: 50)
      skipDryRun: true     // Skip dry run before migrations? (default: false for public nets )
    },
    // rinkeby测试网络，mnemonic为账户的助记词或者私钥
    ropsten: {
      provider: () => new HDWalletProvider(mnemonic, `https://ropsten.infura.io/v3/YOUR-PROJECT-ID`),
      network_id: 3,       // Ropsten's id
      gas: 5500000,        // Ropsten has a lower block limit than mainnet
      confirmations: 2,    // # of confs to wait between deployments. (default: 0)
      timeoutBlocks: 200,  // # of blocks before a deployment times out  (minimum/default: 50)
      skipDryRun: true     // Skip dry run before migrations? (default: false for public nets )
    },
    //主网
    advanced: {
      provider: () => new HDWalletProvider(mnemonic, `https://mainnet.infura.io`),
      network_id: 1,       // Custom network  https://www.jianshu.com/p/a11bcea09809#comments
      gas: 8500000,           // Gas sent with each transaction (default: ~6700000)
      gasPrice: 20000000000,  // 20 gwei (in wei) (default: 100 gwei)
      from: '<address>',        // Account to send txs from (default: accounts[0])
      websockets: true        // Enable EventEmitter interface for web3 (default: false)
    },
  },
  // Set default mocha options here, use special reporters etc.
  mocha: {
    // timeout: 100000
  },
  compilers: {
    solc: {
      version: "^0.8.0",
      docker: false,        // Use "0.5.1" you've installed locally with docker (default: false)
      settings: {          // See the solidity docs for advice about optimization and evmVersion
        optimizer: {
          enabled: false,
          runs: 200
        },
        evmVersion: "byzantium"
      }
    }
  }
};



// module.exports = {
//   networks: {
//     development: {
//       host: "127.0.0.1",
//       port: 8545,
//       network_id: "*" // Match any network id
//     }
//   },
//   compilers: {
//     solc: {
//       version: "^0.8.0"
//     }
//   }
// };
