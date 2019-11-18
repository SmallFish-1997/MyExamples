const routers = require('express').Router();
const block = require('./block');
const block_pow = require('./block_pow');
const block_chain = require('./block_chain');
routers.get('/block',block)
.get('/block_pow',block_pow)
.get('/block_chain',block_chain)

module.exports = routers;