const { BlockChain, Transaction } = require('../Block/block_chain');

module.exports = async (req, res, next) => {
    let savjeeCoin = new BlockChain();
    console.log('Creating some transactions...');
    savjeeCoin.createTransaction(new Transaction('address1', 'address2', 100));
    savjeeCoin.createTransaction(new Transaction('address2', 'address1', 50));
    console.log('Starting the miner...');
    console.log('Balance of Xaviers address is', savjeeCoin.getBalanceOfAddress('xaviers-address'))
    savjeeCoin.minePendingTransactions('xaviers-address');
    console.log('Starting the miner again!');
    savjeeCoin.minePendingTransactions("xaviers-address");
    console.log('Balance of Xaviers address is', savjeeCoin.getBalanceOfAddress('xaviers-address'))

    res.json(savjeeCoin)
}


