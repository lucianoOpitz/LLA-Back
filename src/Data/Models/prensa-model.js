const mysqlConnect = require('../DataBase')
class PrensaModel{
    static async showPrensa(){
        return new Promise((resolve, reject) => {
            mysqlConnect.query('SELECT * from prensa',function(err, result) {
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
module.exports = PrensaModel