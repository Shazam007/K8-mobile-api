const express = require('express');
const router = express.Router();

// GET /status
router.get('/', (req, res) => {
  res.status(200).json({ message: 'This is status service' });
});

module.exports = router;
