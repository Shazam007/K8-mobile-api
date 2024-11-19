const express = require('express');
const app = express();

app.use(express.json());

app.post('/auth', (req, res) => {
  const { username, password } = req.body;

  const secretValue = process.env.SECRET_VALUE || 'No secret found';

  if (username === 'admin' && password === 'password123') {
    return res.json({
      message: 'Authentication successful',
      token: 'dummy----token',
      secret: secretValue,
    });
  } else {
    return res
      .status(401)
      .json({ message: 'Invalid credentials found', secret: secretValue });
  }
});

// Start the server
const port = process.env.PORT || 3000;
const server = app.listen(port, () => {
  console.log(`Auth Service running on port ${port}`);
});

module.exports = { app, server };
