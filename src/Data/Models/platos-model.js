const mysqlConnect = require('../DataBase')
class PlatosModel{
    static async mostrarPlatos(carta){
        return new Promise((resolve, reject) => {
            const query = 'SELECT platos.idCarta,platos.idPlato,platos.tituloPlato, platos.subTituloPlato,platos.detalles, platos.precio , platos.vegetariano, platos.sinTacc, platos.img, carta.Titulo, carta.subTitulo FROM platos INNER JOIN carta ON platos.idCarta=carta.idCarta where carta.Titulo= ?'
            mysqlConnect.query(query, [carta.titulo],function(err, result) {
                if (err) {
                    // Error
                    return reject(err);
                }
                // Todo ok
                resolve(result);
            });
        }).then(rows => {
            return rows
        });
    }
    static async mostrarPlatosVegetarianos(carta){
        return new Promise((resolve, reject) => {
            mysqlConnect.query('SELECT platos.idCarta,platos.idPlato,platos.tituloPlato, platos.subTituloPlato,platos.detalles, platos.precio , platos.vegetariano, platos.sinTacc, platos.img, carta.Titulo, carta.subTitulo FROM platos INNER JOIN carta ON platos.idCarta=carta.idCarta where platos.vegetariano="true"',function(err, result) {
                if (err) {
                    // Error
                    return reject(err);
                }
                // Todo ok
                resolve(result);
            });
        }).then(rows => {
            return rows
        });
    }
    static async mostrarPlatosSinGluten(carta){
        return new Promise((resolve, reject) => {
            mysqlConnect.query('SELECT platos.idCarta,platos.idPlato,platos.tituloPlato, platos.subTituloPlato,platos.detalles, platos.precio , platos.vegetariano, platos.sinTacc, platos.img, carta.Titulo, carta.subTitulo FROM platos INNER JOIN carta ON platos.idCarta=carta.idCarta where platos.sinTacc="true"',function(err, result) {
                if (err) {
                    // Error
                    return reject(err);
                }
                // Todo ok
                resolve(result);
            });
        }).then(rows => {
            return rows
        });
    }
    static async mostrarPlato(plato){
        return new Promise((resolve, reject) => {
            const query = 'SELECT platos.idCarta,platos.idPlato,platos.tituloPlato, platos.subTituloPlato,platos.detalles, platos.precio , platos.vegetariano, platos.sinTacc, platos.img, carta.Titulo, carta.subTitulo FROM platos INNER JOIN carta ON platos.idCarta=carta.idCarta where platos.idPlato= ?'
            mysqlConnect.query(query, [plato.id],function(err, result) {
                if (err) {
                    // Error
                    return reject(err);
                }
                // Todo ok
                resolve(result);
            });
        }).then(rows => {
            return rows
        });
    }
}
module.exports = PlatosModel