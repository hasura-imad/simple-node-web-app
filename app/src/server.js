'use strict';

const express = require('express');

// Constants
// Do not change PORT
const PORT = 80;

// App
const app = express();
app.get('/', function (req, res) {
  res.send('Hello world from imad ' + process.env.USER);
});

app.listen(PORT);
console.log('Running on http://localhost:' + PORT);
