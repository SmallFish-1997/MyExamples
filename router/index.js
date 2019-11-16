const routers = require('express').Router();
const block = require('./block');
const block_pow = require('./block_pow');
routers.get('/block',block)
.get('/block_pow',block_pow)

module.exports = routers;