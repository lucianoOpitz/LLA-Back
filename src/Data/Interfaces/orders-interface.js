
class OrdersInterface{
    constructor(order){
        this.idOrder = order.idOrder
        this.idUser = order.idUser
        this.idPlato = order.idPlato
        this.estado = order.estado
    }
}
module.exports = OrdersInterface