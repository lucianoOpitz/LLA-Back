const TokenModel = require ('../../Data/Models/token-model')
class TokenController {
    static async verifyToken(req,res){
        try{
            const body=req.body
            const usuario = await TokenModel.getToken(body)
            return res.json(usuario)
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
    static async setTokens(req,res){
        try{
            const body=req.body
            const usuario = await TokenModel.setToken(body)
            return res.json(usuario)
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
    static async DelToken(req,res){
        try{
            const body=req.body
            const usuario = await TokenModel.delToken(body)
            return res.send(usuario)
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
}
module.exports=TokenController