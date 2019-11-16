const SHA256 = require('crypto-js/sha256')
// 基础区块链例子 - 未实现POW工作量证明
class Block {
    constructor({index,timer,previousHash,data }){
        this.index = index;
        this.timer = timer;
        this.previousHash  = previousHash ;
        this.data = data;
        this.hash = this.calculateHash();
    }
    // 计算区块hash
    calculateHash(){
        return SHA256(this.index+this.timer+this.previousHash+JSON.stringify(this.data)).toString();
    }
}
exports.Block = Block;

exports.BlockChain = class BlockChain{
    constructor(){
        this.chain = [this.createGenesisBlock()];
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
        new_block.hash = new_block.calculateHash();
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

