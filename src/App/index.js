const express = require ('express')
const fs = require ( 'fs' )
const https = require('https')
const app = express()
const bodyParser = require("body-parser")
var cors = require ("cors")
const ENV = require ("../Env")
app.use(cors({
    credentials: true,
    origin: ENV.CLIENT
}))
app.use(bodyParser.urlencoded({ extended: false }))
app.use(express.json());
app.get('', function(req,res){
    res.send('hola')
})

const routerUser=require ('../Routes/usuarios-routes.js')
const routerToken=require ('../Routes/token-routes.js')
const routerPlatos=require('../Routes/platos-routes.js')
const routerOrders=require('../Routes/orders-routes.js')
const routerCarta=require('../Routes/carta-routes.js')
const routerPrensa=require('../Routes/prensa-routes.js')

app.post('/api/newAccount', routerUser)
app.get('/users', routerUser)
app.get('/bussines', routerUser)
app.post('/myaccount', routerUser)
app.post('/api/verifyExistence',routerUser)
app.post('/api/verifyUser', routerUser)
app.post('/api/showUser', routerUser)
app.post('/api/changeUser', routerUser)
app.post('/api/changeUserPass', routerUser)
app.post('/api/changeUserNR', routerUser)
app.post('/api/changeUserNRPass', routerUser)
app.post('/api/changeUserMap', routerUser)
app.post("/api/tipoUser", routerUser)
app.post('/token', routerToken)
app.post('/setToken', routerToken)
app.post('/delToken', routerToken)
app.post('/platos', routerPlatos)
app.post('/plato', routerPlatos)
app.get('/platos-vegetarianos', routerPlatos)
app.get('/platos-sin-gluten', routerPlatos)
app.post('/show-order', routerOrders)
app.post('/post-order', routerOrders)
app.post('/up-order', routerOrders)
app.post('/up-order-comentary', routerOrders)
app.post('/del-order', routerOrders)
app.post('/show-carta', routerCarta)
app.get('/show-all-carta', routerCarta)
app.get('/prensa', routerPrensa)

const options = {}
const server = https.createServer(app)
module.exports = server