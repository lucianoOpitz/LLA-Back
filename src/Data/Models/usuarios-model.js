const mysqlConnect = require('../DataBase')
const Key = require ('../../Domain/libs/encript')
class UsuariosModel{
    static async showUser(){
        mysqlConnect.query('Select * from usuario', (err,rows)=>{
            if(err) throw err
            return rows
        })
    }
    static async createAccount(usuario){
        const query = "INSERT INTO usuario (name, secondName, email, telefono, userName, userPass, tipo, lt, lng, direccion)  VALUES (?,?,?,?,?,?,?,?,?,?)"
        mysqlConnect.query(query, [usuario.name, usuario.secondName, usuario.email, usuario.telefono, usuario.userName, Key.encripted(usuario.userPass), usuario.tipo, usuario.lt, usuario.lng, usuario.direccion],(err,rows)=>{
            if(err) throw err
            return rows
        }) 
    }
    static async dirUsers(){
        return new Promise((resolve, reject) => {
            mysqlConnect.query("select userName, lt, lng from usuario",function(err, result) {
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
    static async dirUser(user){
        const query="select userName, lt, lng from usuario where userName=?"
        return new Promise((resolve, reject) => {
            mysqlConnect.query(query, [user.userName],function(err, result) {
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
    static async verifyExistence(verifyExistence){
        const query = "Select userName, email, telefono from usuario where userName= ? or telefono= ? or email= ?"
        return new Promise((resolve, reject) => {
            mysqlConnect.query(query,[verifyExistence.userName, verifyExistence.telefono, verifyExistence.email],function(err, result) {
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
    static async verifyUserPass(userAndPass){
        return new Promise((resolve, reject) => {
            const query = `Select userName, tipo from usuario where userName= ? AND userPass= ?`
            mysqlConnect.query(query, [userAndPass.userName, Key.encripted(userAndPass.userPass)],function(err, result) {
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
    static async showUser(user){
        return new Promise((resolve, reject) => {
            mysqlConnect.query('Select * from usuario where userName=?',[user.userName],function(err, result) {
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
    static async changeUser(body){
        return new Promise((resolve, reject) => {
            mysqlConnect.query('UPDATE usuario SET '+body.column+'="'+body.change+'" WHERE userName="'+body.usuario+'"',function(err, result) {
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
    static async changeUserNR(body){
        return new Promise((resolve, reject) => {
            mysqlConnect.query('Select userName, tipo from usuario where '+body.column+'="'+body.change+'" ',function(err, result) {
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
    static async changeUserPass(body){
        return new Promise((resolve, reject) => {
            mysqlConnect.query('UPDATE usuario SET '+body.column+'="'+Key.encripted(body.change)+'" WHERE userName="'+body.usuario+'"',function(err, result) {
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
    static async changeUserNRPass(body){
        return new Promise((resolve, reject) => {
            mysqlConnect.query('Select userName from usuario where '+body.column+'="'+Key.encripted(body.change)+'" ',function(err, result) {
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
    static async changeUserMap(body){
        return new Promise((resolve, reject) => {
            mysqlConnect.query('UPDATE usuario SET lt="'+body.lt+'", lng="'+body.lng+'", direccion="'+body.direccion+'" WHERE userName="'+body.usuario+'"',function(err, result) {
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
    static async tipoUsuario(body){
        return new Promise((resolve, reject) => {
            mysqlConnect.query('Select tipo from usuario where userName="'+body.user+'"',function(err, result) {
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
module.exports = UsuariosModel