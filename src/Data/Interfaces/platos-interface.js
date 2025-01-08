
class PlatosInterface{
    constructor(plato){
        this.idPlato = plato.idPlato
        this.tituloPlato = plato.tituloPlato
        this.subTituloPlato = plato.subTituloPlato
        this.detalles = plato.detalles
        this.precio = plato.precio
        this.idCarta = plato.idCarta
        this.vegetariano = plato.vegetariano
        this.sinTacc = plato.sinTacc
        this.img = plato.img
    }
}
module.exports = PlatosInterface