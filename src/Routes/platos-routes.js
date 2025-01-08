const express = require('express')
const PlatosController = require('../Domain/Controllers/platos-controller.js')
const routerPlatos = express.Router()
routerPlatos.post('/platos', PlatosController.showPlatos)
routerPlatos.post('/plato', PlatosController.showPlato)
routerPlatos.get('/platos-vegetarianos', PlatosController.showPlatosVegetarianos)
routerPlatos.get('/platos-sin-gluten', PlatosController.showPlatosSinGluten)
module.exports = routerPlatos