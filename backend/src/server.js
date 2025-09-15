
const express = require('express')
const app = express()

app.get('/', (req, res) => {
  // Do nothing yet
  res.sendStatus(404)
})

app.listen(3000)
