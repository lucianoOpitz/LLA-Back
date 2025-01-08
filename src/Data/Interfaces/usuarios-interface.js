
class UsuariosInterface{
    constructor(usuario){
        this.idUser = usuario.idUser
        this.name = usuario.name
        this.secondName = usuario.secondName
        this.email = usuario.email
        this.telefono = usuario.telefono
        this.userName = usuario.userName
        this.userPass = usuario.userPass
        this.tipo = usuario.tipo
        this.ltUser = usuario.ltUser
        this.lngUser = usuario.lngUser
        this.direccion = usuario.direccion
    }
}
module.exports = UsuariosInterface