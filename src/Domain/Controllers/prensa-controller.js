const PrensaModel = require ('../../Data/Models/prensa-model')
class PrensaController{
    static async showPrensa(req,res){
        try{
            const prensa = await PrensaModel.showPrensa()
            return res.send(prensa)
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
}
module.exports = PrensaController