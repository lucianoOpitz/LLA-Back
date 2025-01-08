const mysqlConnect = require('../DataBase')
class CartaModel{
    static async showCartaData(body){
        return new Promise((resolve, reject) => {
            const query = 'SELECT * FROM carta where idCarta=?'
            mysqlConnect.query(query,[body],function(err, result) {
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
    static async showAllCartaData(body){
        return new Promise((resolve, reject) => {
            mysqlConnect.query('SELECT * FROM carta',function(err, result) {
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
module.exports = CartaModel