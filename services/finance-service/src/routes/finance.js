const express = require('express');
const router = express.Router();

// GET /finance
router.get('/', (req, res) => {
  res.status(200).json({ message: 'This is finance service' });
});

module.exports = router;
