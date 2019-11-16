const express = require('express');
const PORT = process.env.PORT || `6060`;
const HOST = process.env.HOST || '10.10.1.101';
const cookieParser = require('cookie-parser');
const bodyParser = require('body-parser')
const routers = require('./router')
const server = express();

server.use(cookieParser());
server.use(bodyParser.json());  //body-parser 解析json格式数据
server.use(bodyParser.urlencoded({            //此项必须在 bodyParser.json 下面,为参数编码
  extended: false
}));
server.all("*", function (req, res, next) {
    res.set({
        'Content-Type': 'application/json',
    });
    next();
});
server.use(routers);
server.listen(PORT,HOST, err => {
  if (err) throw err;
  console.log(`Server Running on http://${HOST}:${PORT}`);
});

