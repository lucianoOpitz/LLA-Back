const mysqlConnect = require('../DataBase')
class CartaModel{
    static async showCartaData(body){
        return new Promise((resolve, reject) => {
            const query = 'SELECT * FROM carta'
            mysqlConnect.query(query,function(err, result) {
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
            mysqlConnect.query('SELECT * FROM titulo_cartas',function(err, result) {
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
    static async cartaDesc(body){
        return new Promise((resolve, reject) => {
            mysqlConnect.query('SELECT * FROM carta_descriptions',function(err, result) {
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