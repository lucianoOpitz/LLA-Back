const express = require('express')
const CartaController = require('../../Domain/Controllers/carta-controllers')
const routerCarta = express.Router()
routerCarta.post('/show-carta', CartaController.ShowCarta)
routerCarta.get('/show-all-carta', CartaController.ShowAllCarta)
module.exports = routerCarta