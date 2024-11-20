const express = require('express');
const financeRoute = require('./routes/finance');

const app = express();

// Middleware
app.use(express.json());

// Routes
app.use('/finance', financeRoute);

// Start the server
const port = process.env.PORT || 3200;
const server = app.listen(port, () => {
  console.log(`Finance-Service is running on port ${port}`);
});

module.exports = { app, server };
