const express = require('express');
const statusRoute = require('./routes/status');

const app = express();

// Middleware
app.use(express.json());

// Routes
app.use('/status', statusRoute);

// Start the server
const port = process.env.PORT || 3300;
const server = app.listen(port, () => {
  console.log(`Status Service is running on port ${port}`);
});

module.exports = { app, server };
