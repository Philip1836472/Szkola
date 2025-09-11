const express = require('express');

const app = express();
const port = 3000;

app.use(express.json());

app.get('/', (req, res) => {
  res.send('Hello');
});

app.get('/page', (req, res) => {
  res.send("You're on the main page!");
})

app.post('/login', (req, res) => {
  res.send("Authorized");
})

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});