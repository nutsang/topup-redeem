const cors = require('cors')
const express = require('express')
const morgan = require('morgan')
const dotenv = require('dotenv')
dotenv.config({ path: 'server.env'})
const topUpRoute = require('./routes/topup-routes')
const redeemCodeRoute = require('./routes/redeem-code-routes')

const app = express()

//middleware
app.use(express.json())
app.use(cors())
app.use(morgan('dev'))

//routes
app.use('/api', topUpRoute)
app.use('/api', redeemCodeRoute)

const port = process.env.PORT || 8080
app.listen(port, () => {
    console.log(`server at http://localhost:${port}/`)
})