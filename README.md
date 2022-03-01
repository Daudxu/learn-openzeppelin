# learn-openzeppelin
learn-openzeppelin

truffle compile --network development

truffle migrate --network development

truffle test --network development

truffle console --network development

Starting migrations...
======================
> Network name:    'development'
> Network id:      1337
> Block gas limit: 6721975 (0x6691b7)


1_initial_migration.js
======================

   Deploying 'TutorialToken'
   -------------------------
   > transaction hash:    0xbf6f19a5ee407a50bf648fbea4552c024d07c23b5f11f40235ccf428efc76bbe
   > Blocks: 0            Seconds: 0
   > contract address:    0xBB11398597a487b1907c0a42cDea30A35d0aa7e6
   > block number:        1
   > block timestamp:     1646115817
   > account:             0x5F077d886db8f0346Dc231A191682f603345A043
   > balance:             99.973999
   > gas used:            1300050 (0x13d652)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.026001 ETH

   > Saving artifacts
   -------------------------------------
   > Total cost:            0.026001 ETH


Summary
=======
> Total deployments:   1
> Final cost:          0.026001 ETH

var abi = [{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"owner","type":"address"},{"indexed":true,"internalType":"address","name":"spender","type":"address"},{"indexed":false,"internalType":"uint256","name":"value","type":"uint256"}],"name":"Approval","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"from","type":"address"},{"indexed":true,"internalType":"address","name":"to","type":"address"},{"indexed":false,"internalType":"uint256","name":"value","type":"uint256"}],"name":"Transfer","type":"event"},{"inputs":[{"internalType":"address","name":"owner","type":"address"},{"internalType":"address","name":"spender","type":"address"}],"name":"allowance","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"spender","type":"address"},{"internalType":"uint256","name":"amount","type":"uint256"}],"name":"approve","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"account","type":"address"}],"name":"balanceOf","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"totalSupply","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"to","type":"address"},{"internalType":"uint256","name":"amount","type":"uint256"}],"name":"transfer","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"from","type":"address"},{"internalType":"address","name":"to","type":"address"},{"internalType":"uint256","name":"amount","type":"uint256"}],"name":"transferFrom","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"name","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"symbol","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"decimals","outputs":[{"internalType":"uint8","name":"","type":"uint8"}],"stateMutability":"view","type":"function"}]


 var contract = new web3.eth.Contract(abi, '0xDF17eeE5FCa4A947273B9Bd23ccCe694D07CeFf3')

 contract.name()
 contract.symbol()
 contract.decimals()
 contract.balanceOf(eth.accounts[0])
 contract.balanceOf(web3.eth.accounts.wallet[0].address)

 eth.defaultAccount = eth.accounts[0]
 contract.transfer(web3.eth.accounts[1], 600000)
 contract.balanceOf(web3.eth.accounts[1])


contract.methods.allowance('0xE01c4dbF0cA2eEb0B21056693D5df53827f94f28', '0xDF17eeE5FCa4A947273B9Bd23ccCe694D07CeFf3').call({ from: '0xDF17eeE5FCa4A947273B9Bd23ccCe694D07CeFf3' })


web3.eth.accounts.wallet.add('9ecfdc72ecdb8e6d5933577c40d1754ca52ccaf9c93a51219f585393134184ac')