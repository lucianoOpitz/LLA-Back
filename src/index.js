
require('dotenv').config()
const app = require('./App')
const ENV = require ('./Env')
const PORT = ENV.PORT
app.listen(PORT, '0.0.0.0', () => {
    console.log('Server on port', PORT)
})