// block.js 基础上+POW工作量证明
// Nonce - Nonce是用来查找一个有效Hash的次数。

const SHA256 = require('crypto-js/sha256')
// 基础区块链例子 - 未实现POW工作量证明
class Block {
    constructor({timer,previousHash,data,nonce }){
        this.timer = timer;
        this.previousHash  = previousHash ;
        this.data = data;
        this.hash = this.calculateHash();
        this.nonce = nonce || 0; // Nonce是用来查找一个有效Hash的次数
    }
    // 计算区块hash
    calculateHash(){
        return SHA256(this.timer+this.previousHash+JSON.stringify(this.data)+this.nonce).toString();
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
        this.difficulty = 5; // 计算难度 - 难度越大创建区块的时间越长

    }
   
    // 创建创世区块
    createGenesisBlock(){
        return new Block({index:0,timer:'2019/01/01',previousHash:'Genesis Hash',data:'data message'})
    }
    // 获取最新区块
    getLastedBlock(){
        return this.chain[this.chain.length-1];
    }
    // 创建新区块
    addBlock(new_block){
        new_block.previousHash = this.getLastedBlock().hash;
        new_block.mineBlock(this.difficulty); // 通过计算难度计算hash
        // new_block.hash = new_block.calculateHash();
        this.chain.push(new_block);
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
}

