const mysqlConnect = require('../DataBase')
class OrdersModel{
    static async showOrderUser(body){
        return new Promise((resolve, reject) => {
            const query = "SELECT * FROM ordenesaconfirmar INNER JOIN platos ON ordenesaconfirmar.idPlato=platos.idPlato where ordenesaconfirmar.idUser= ?"
            mysqlConnect.query(query,[body.idUser],function(err, result) {
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
    static async postOrderUser(body){
        return new Promise((resolve, reject) => {
            const query = 'INSERT INTO ordenesaconfirmar (idUser, idPlato, estado, cantidad)  VALUES (?, ?, ?, ?)'
            mysqlConnect.query(query, [body.idUser, body.idPlato,"a Confirmar", body.cantidad],function(err, result) {
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
    static async updateComentaryOrderUser(body){
        return new Promise((resolve, reject) => {
            const query = 'UPDATE `ordenesaconfirmar` SET `comentario`= ? WHERE idUser= ? && idPlato= ?'
            mysqlConnect.query(query,[body.comentario, body.idUser, body.idPlato],function(err, result) {
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
    static async updateOrderUser(body){
        return new Promise((resolve, reject) => {
            const query = 'UPDATE `ordenesaconfirmar` SET `cantidad`= ? WHERE idUser= ? && idPlato= ?'
            mysqlConnect.query(query,[body.cantidad, body.idUser, body.idPlato],function(err, result) {
                if (err) {
                    return reject(err);
                }
                // Todo ok
                resolve(result);
            });
        }).then(rows => {
            return rows
        });
    }
    static async deleteOrderUser(body){
        return new Promise((resolve, reject) => {
            const query = 'DELETE FROM `ordenesaconfirmar` WHERE idUser= ? && idPlato= ?'
            mysqlConnect.query(query,[body.idUser, body.idPlato],function(err, result) {
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
module.exports = OrdersModel