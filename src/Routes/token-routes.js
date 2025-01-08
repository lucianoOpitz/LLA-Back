const express = require('express')
const TokenController = require('../Domain/Controllers/token-controller.js')
const routerToken = express.Router()
routerToken.post('/token', TokenController.verifyToken)
routerToken.post('/setToken', TokenController.setTokens)
routerToken.post('/delToken', TokenController.DelToken)
module.exports = routerToken