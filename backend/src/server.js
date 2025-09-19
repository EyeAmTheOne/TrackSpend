
const express = require('express')
const app = express()

app.get('/', (req, res) => {
  // Do nothing yet
  res.send('Nothing')
})

// Catch all other routes
app.use((req, res, next) => {
  res.status(404).send('404 Page Not Found');
});

app.listen(3000, () => {
  console.log('Server running on port 3000')
})
