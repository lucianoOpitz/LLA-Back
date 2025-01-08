const CartaModel = require ('../../Data/Models/carta-model')
class CartaController {
    static async ShowCarta(req,res){
        try{
            const platoCartaData = req.body
            const platoCarta = await CartaModel.showCartaData(platoCartaData)
            return res.send(platoCarta)
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
    static async ShowAllCarta(req,res){
        try{
            const platoCarta = await CartaModel.showAllCartaData()
            return res.send(platoCarta)
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
}
module.exports=CartaController