const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
    res.send('<h1>Hello World from Node.js Docker Application!</h1>');
});

app.listen(PORT, '0.0.0.0', () => {
    console.log(`Node.js web application listening on port ${PORT}`);
});
