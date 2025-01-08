const express = require('express')
const UsuariosController = require('../../Domain/Controllers/usuarios-controller.js')

const routerUser = express.Router()

routerUser.post('/api/newAccount', UsuariosController.postNewUser)
routerUser.get('/users', UsuariosController.mostrarUsuarios)
routerUser.get('/bussines', UsuariosController.getDirUsers)
routerUser.post('/myaccount', UsuariosController.getDirUser)
routerUser.post('/api/verifyExistence', UsuariosController.getVerifyExistence)
routerUser.post('/api/verifyUser', UsuariosController.loguear)
routerUser.post('/api/showUser', UsuariosController.userShow)
routerUser.post('/api/changeUser', UsuariosController.userChange)
routerUser.post('/api/changeUserNR', UsuariosController.userChangeDontRepeat)
routerUser.post('/api/changeUserPass', UsuariosController.userChangePass)
routerUser.post('/api/changeUserNRPass', UsuariosController.userChangeDontRepeatPass)
routerUser.post('/api/changeUserMap', UsuariosController.userChangeMap)
routerUser.post('/api/tipoUser', UsuariosController.tipoUser)
module.exports = routerUser