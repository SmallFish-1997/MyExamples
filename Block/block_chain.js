// POW工作量证明+挖矿
// Nonce - Nonce是用来查找一个有效Hash的次数。
const SHA256 = require('crypto-js/sha256')
class Transaction{
    constructor(fromAddress,toAddress,amount){
        this.fromAddress = fromAddress;
        this.toAddress = toAddress;
        this.amount = amount;
    }
}
class Block {
    constructor({timer,previousHash='',transactions }){
        this.timer = timer;
        this.previousHash  = previousHash ;
        this.transactions  = transactions ;
        this.hash = this.calculateHash();
        this.nonce =  0; // Nonce是用来查找一个有效Hash的次数
    }
    // 计算区块hash
    calculateHash(){
        return SHA256(this.timer+this.previousHash+JSON.stringify(this.transactions)+this.nonce).toString();
    }
     // POW 机制实现
     mineBlock(difficulty){
        //  Array(2+1).join('0') = '00'
        console.log(Date.now());
        while(this.hash.substring(0,difficulty) !== Array(difficulty+1).join('0')){
            // 找到00开头的hash后，添加区块 （创建一个新区块的过程称为挖矿）
            this.nonce++;
            this.hash = this.calculateHash();
        }
        console.log(Date.now());
    }
}
exports.Block = Block;

exports.BlockChain = class BlockChain{
    constructor(){
        this.chain = [this.createGenesisBlock()];
        this.difficulty = 2; // 计算难度 - 难度越大创建区块的时间越长

        this.pendingTransactions = [];//在区块产生之间存储交易的地方

        this.miningReward = 100; //挖矿奖励
    }
    // 创建创世区块
    createGenesisBlock(){
        return new Block({timer:'2019/01/01',previousHash:'Genesis Hash',transactions:'Genesis message'})
    }
    // 获取最新区块
    getLastedBlock(){
        return this.chain[this.chain.length-1];
    }
    // 创建新区块
    createTransaction(transaction){

        // something check

        this.pendingTransactions.push(transaction);

    }
    // 添加新区块+处理挖矿
    minePendingTransactions(miningRewardAddress){
        let block = new Block({timer:Date.now(),transactions:this.pendingTransactions})
        block.previousHash = this.getLastedBlock().hash;
        block.mineBlock(this.difficulty); // 通过计算难度计算hash
        this.chain.push(block);

        this.pendingTransactions = [
            new Transaction(null,miningRewardAddress,this.miningReward)
        ]
    }


    // 判断区块是否有效
    // 一般会在一开始通过运行isChainValid()来验证整个链的完整性
    // true=完整
    isChainValid(){
        for(let i=1;i>=this.chain.length;i++){
            let currency_block = this.chain[i];
            let previous_lock  = this.chain[i-1];
            // hash 计算内容是否对应
            if(currency_block.hash !== currency_block.calculateHash()){
                return false;
            }
            // 对比上一个区块hash是否相等
            if(currency_block.previousHash !== previous_lock.hash) return false;
        }
        return true;
    }

    getBalanceOfAddress(address){
        let balance = 0; // you start at zero!
        // 遍历每个区块以及每个区块内的交易
        for(const block of this.chain){
          for(const trans of block.transactions){
      
            // 如果地址是发起方 -> 减少余额
            if(trans.fromAddress === address){
              balance -= trans.amount;
            }
      
            // 如果地址是接收方 -> 增加余额
            if(trans.toAddress === address){
              balance += trans.amount;
            }
          }
        }
      
        return balance;
      }
      
}

exports.Transaction = Transaction;
