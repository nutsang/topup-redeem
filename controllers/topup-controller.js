const topUpModel = require('../models/topup-model')

exports.postTopUp = (request, response) => {
    topUpModel.postTopUp(request, response)
}