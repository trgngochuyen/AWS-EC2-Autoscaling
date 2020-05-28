
const express = require('express')
const app = express()
const os = require('os')
const port = 8080

app.get('/', (req, res) => {
  res.send(`Hello from: ${os.hostname()}`)
})

app.listen(port, () => {
  console.log(`Server is listening on port ${port}!`)
})