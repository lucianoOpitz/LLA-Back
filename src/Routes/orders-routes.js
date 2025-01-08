const express = require('express')
const OrdersController = require('../Domain/Controllers/orders-controllers')
const routerOrders = express.Router()
routerOrders.post('/show-order', OrdersController.OrderUserShow)
routerOrders.post('/post-order', OrdersController.OrderUserPost)
routerOrders.post('/up-order', OrdersController.OrderUserUpdate)
routerOrders.post('/up-order-comentary', OrdersController.OrderComentaryUserUpdate)
routerOrders.post('/del-order', OrdersController.OrderUserDelete)
module.exports = routerOrders