const express = require('express')
const CartaController = require('../Domain/Controllers/carta-controllers')
const routerCarta = express.Router()
routerCarta.get('/show-carta', CartaController.ShowCarta)
routerCarta.get('/show-all-carta', CartaController.ShowAllCarta)
routerCarta.get('/show-carta-desc', CartaController.cartaDescription)
module.exports = routerCarta