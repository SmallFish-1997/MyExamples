const routers = require('express').Router();
const block_demo = require('./block_demo');
routers.post('/block_demo',block_demo)

module.exports = routers;