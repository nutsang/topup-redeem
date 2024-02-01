const connection = require('./connection')
const uuid = require('uuid')

module.exports.postRedeemCode = (request, response) => {
    const { redeemCode } = request.body
    connection.query('SELECT product_id from addproduct_test_table WHERE uuid = ? AND product_status = 0', [redeemCode], (error, result) => {
        if (error) response.status(200).json({status: false, message: 'การแลกโค้ดล้มเหลว'})
        if(result.length !== 0){
            const product_id = result[0].product_id
            connection.query('UPDATE addproduct_test_table SET product_status = ? WHERE uuid = ? LIMIT 1', [0, redeemCode], (error, result) => {
                if (error) response.status(200).json({status: false, message: 'การแลกโค้ดล้มเหลว'})
                response.status(200).json({status: true, message: product_id})
            })
        }else{
            response.status(200).json({status: false, message: 'การแลกโค้ดล้มเหลว'})
        }
    })
}

/*
{
    "redeemCode": "f330de44-ace6-4525-816f-81d473a74a3a"
}
*/