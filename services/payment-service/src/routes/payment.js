const express = require('express');
const router = express.Router();

// GET /payment
router.get('/', (req, res) => {
  res.status(200).json({ message: 'This is payment service' });
});

module.exports = router;
