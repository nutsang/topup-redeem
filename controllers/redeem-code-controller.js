const redeemCodeModel = require('../models/redeem-code-model')

exports.postRedeemCode = (request, response) => {
    redeemCodeModel.postRedeemCode(request, response)
}