const connection = require('./connection')
const uuid = require('uuid')
const twvoucher = require('@fortune-inc/tw-voucher')

module.exports.postTopUp = (request, response) => {
    const { giftTruemoney } = request.body
    twvoucher('0924383794', giftTruemoney).then((redeemed) => {
        connection.query('INSERT INTO topup_test_table (uuid, amount) VALUES (?, ?)', [uuid.v4(), redeemed.amount], (error, result) => {
            if (error) response.status(200).json({status: false, message: 'การเก็บธุรกรรมเติมเงินล้มเหลว'})
            response.status(200).json({status: true, message: 'เติมเงินสำเร็จ จำนวนเงิน ' + redeemed.amount + ' บาท'})
        })
    }).catch((error) => {
        response.status(200).json({status: false, message: 'เติมเงินล้มเหลว'})
    })
}