const {BlockChain,Block} = require('../Block/block');

module.exports = async (req, res, next) => {
    let savjeeCoin = new BlockChain();
    savjeeCoin.addBlock(new Block({timer:'2019/01/02',data:{amount:10}}))
    savjeeCoin.addBlock(new Block({timer:'2019/01/03',data:{amount:20}}))
    res.json(savjeeCoin);
}


