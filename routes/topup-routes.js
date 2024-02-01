const express = require('express')
const router = express.Router()
const { postTopUp } = require('../controllers/topup-controller')

router.post('/topup', postTopUp)

module.exports = router