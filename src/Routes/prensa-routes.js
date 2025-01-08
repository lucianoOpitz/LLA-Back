const express = require('express')
const PrensaController = require('../Domain/Controllers/prensa-controller')
const routerPrensa = express.Router()
routerPrensa.get('/prensa', PrensaController.showPrensa)
module.exports = routerPrensa