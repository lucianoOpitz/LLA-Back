const UsuariosModel = require ('../../Data/Models/usuarios-model')
const Key = require ('../libs/encript')
class UsuariosController {
    static async mostrarUsuarios(req,res){
        try{
            const usuarios = await UsuariosModel.showUser()
            return res.json(usuarios)
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
    static async postNewUser(req, res) {
        try {
            const newUsuario = req.body
            const usuario = await UsuariosModel.createAccount(newUsuario)
            return res.json("Usuario Creado")
        } catch (e) {
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
    static async getDirUsers(req,res){
        try{
            const direccionUsuarios = await UsuariosModel.dirUsers()
            return res.send(direccionUsuarios)
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
    static async getDirUser(req,res){
        try{
            const user = req.body
            const direccionUsuario = await UsuariosModel.dirUser(user)
            return res.send(direccionUsuario[0])
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
    static async getVerifyExistence(req,res){
        try{
            let verify=req.body
            const verificarExistencia = await UsuariosModel.verifyExistence(verify)
            if(verificarExistencia === undefined){
                return res.send(0)
            }else{
                return res.send(verificarExistencia)
            }
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
    static async loguear(req,res){
        try{
            let verify=req.body
            const verificarExistencia = await UsuariosModel.verifyUserPass(verify)
            if(verificarExistencia === undefined){
                return res.send(0)
            }else{
                return res.send(verificarExistencia)
            }
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
    static async userShow(req,res){
        try{
            let user=req.body
            const userData=await UsuariosModel.showUser(user)
            if(userData === undefined){
                return res.send(0)
            }else{
                userData[0].userPass=Key.decencripted(userData[0].userPass)
                return res.send(userData[0])
            }
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }

    }
    static async userChange(req,res){
        try{
            const userData=await UsuariosModel.changeUser(req.body)
            return userData
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
    static async userChangeDontRepeat(req,res){
        try{
            const userData=await UsuariosModel.changeUserNR(req.body)
            return res.send(userData)
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
    static async userChangePass(req,res){
        try{
            const userData=await UsuariosModel.changeUserPass(req.body)
            return userData
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
    static async userChangeDontRepeatPass(req,res){
        try{
            const userData=await UsuariosModel.changeUserNRPass(req.body)
            return res.send(userData)
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
    static async userChangeMap(req,res){
        try{
            const userData=await UsuariosModel.changeUserMap(req.body)
            return userData
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
    static async tipoUser(req,res){
        try{
            const userData=await UsuariosModel.tipoUsuario(req.body)
            return res.json(userData[0])
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
}
module.exports = UsuariosController