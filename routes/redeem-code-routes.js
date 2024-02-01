const express = require('express')
const router = express.Router()
const { postRedeemCode } = require('../controllers/redeem-code-controller')

router.post('/redeem-code', postRedeemCode)

module.exports = router