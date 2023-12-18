const express = require('express')
const mongoose = require("mongoose");
const authRouter = require('./router/auth')

const app = express()

app.use(express.json());
//中间层
app.use(authRouter)


// 设置默认 mongoose 连接
const mongoDB = "mongodb+srv://admin:xm810505339@cluster0.qgmod32.mongodb.net/?retryWrites=true&w=majority";
mongoose.connect(mongoDB);
// 让 mongoose 使用全局 Promise 库
mongoose.Promise = global.Promise;
// 取得默认连接
const db = mongoose.connection;

// 将连接与错误事件绑定（以获得连接错误的提示）
db.on("error", console.error.bind(console, "MongoDB 连接错误："));

const port = 12345
app.listen(port, () => {
  console.log('连接成功');
  console.log(`http://localhost:${port}/`);
})
