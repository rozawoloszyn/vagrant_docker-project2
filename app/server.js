const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const port = 8080;

let messages = [];

app.use(express.static(__dirname));
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.post('/submit', (req, res) => {
  const msg = req.body.message;
  if (msg) {
    messages.push(msg);
  }
  res.redirect('/');
});

app.get('/messages', (req, res) => {
  res.json(messages);
});

app.listen(port, '0.0.0.0', () => {
  console.log(`Serwer działa na porcie ${port}`);
});
