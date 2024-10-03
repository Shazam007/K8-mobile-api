const express = require('express');
const paymentRouter = require('./routes/payment');

const app = express();

// Middleware
app.use(express.json());

// Routes
app.use('/payment', paymentRouter);

// Start the server
const port = process.env.PORT || 3100;
const server = app.listen(port, () => {
  console.log(`Payment Service is running on port ${port}`);
});

module.exports = { app, server };
