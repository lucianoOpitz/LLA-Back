const OrdersModel = require ('../../Data/Models/orders-model')
class OrdersController {
    static async OrderUserPost(req,res){
        try{
            const platoInOrderInsert = req.body
            const platoInserted = await OrdersModel.postOrderUser(platoInOrderInsert)
            return res.send(platoInserted)
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
    static async OrderUserShow(req,res){
        try{
            const platosInOrder = req.body
            const platos = await OrdersModel.showOrderUser(platosInOrder)
            return res.send(platos)
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
    static async OrderComentaryUserUpdate(req,res){
        try{
            const platoInOrderInsert = req.body
            const platoInserted = await OrdersModel.updateComentaryOrderUser(platoInOrderInsert)
            return res.send(platoInserted)
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
    static async OrderUserUpdate(req,res){
        try{
            const platoInOrderInsert = req.body
            const platoInserted = await OrdersModel.updateOrderUser(platoInOrderInsert)
            return res.send(platoInserted)
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
    static async OrderUserDelete(req,res){
        try{
            const platoInOrderInsert = req.body
            const platoInserted = await OrdersModel.deleteOrderUser(platoInOrderInsert)
            return res.send(platoInserted)
        }catch(e){
            console.log(e)
            return res.status(500).json({ message: 'Server Error' })
        }
    }
}
module.exports=OrdersController