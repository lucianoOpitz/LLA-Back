const mysqlConnect = require('../DataBase')
class TokenModel{
    static async getToken(body){
        return new Promise((resolve, reject) => {
            mysqlConnect.query('Select * from tokens where userName="'+body.userName+'" and token="'+body.token+'" and tipo="'+body.tipo+'"',function(err, result) {
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
    static async setToken(body){
        return new Promise((resolve, reject) => {
            mysqlConnect.query('INSERT INTO tokens (token, userName, tipo)  VALUES ("'+body.token+'", "'+body.nameUser+'", "'+body.tipo+'")',function(err, result) {
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
    static async delToken(body){
        return new Promise((resolve, reject) => {
            mysqlConnect.query('delete from tokens where userName="'+body.nameUser+'" and token!="'+body.token+'"',function(err, result) {
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
module.exports = TokenModel