const express = require('express')
const app = express()

app.use(express.json())

app.get('/', (req, res) => {
  res.send({hello: 'Hello World'})
})

module.exports = { app }
