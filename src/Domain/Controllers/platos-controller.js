const PlatosModel = require ('../../Data/Models/platos-model')
class PlatosController {
    static async showPlatos(req,res){
        try{
            const platosShow = req.body
            const platos = await PlatosModel.mostrarPlatos(platosShow)
            return res.send(platos)
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
    static async showPlatosVegetarianos(req,res){
        try{
            const platos = await PlatosModel.mostrarPlatosVegetarianos()
            return res.send(platos)
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
    static async showPlatosSinGluten(req,res){
        try{
            const platos = await PlatosModel.mostrarPlatosSinGluten()
            return res.send(platos)
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
    static async showPlato(req,res){
        try{
            const platoShow = req.body
            const plato = await PlatosModel.mostrarPlato(platoShow)
            return res.send(plato)
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
}
module.exports=PlatosController