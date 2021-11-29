const express = require('express')
const sayHello = require('./services/sayHello')
const app = express()

app.use(express.json())

app.get('/', (req, res) => {
  res.send(sayHello())
})

module.exports = { app }
