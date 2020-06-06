
const express = require('express')
const app = express()
const os = require('os')
const port = 8080

app.get('/', (req, res) => {
  res.send(`Message from Huyen: ${os.hostname()} is the public IP address of the instance`)
})

app.listen(port, () => {
  console.log(`Server is listening on port ${port}!`)
})