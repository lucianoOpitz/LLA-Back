class Key{
    static encripted(password){
        let encriptText=""
        for (let index = 0; index < password.length; index++) {
            let letra=password.charAt(index)
            let letraByte=letra.charCodeAt()
            letraByte=letraByte*5
            encriptText=encriptText+String.fromCharCode(letraByte)
        }
        return encriptText.toString()
    }
    static decencripted(password){
        let decencript=""
        for (let index = 0; index < password.length; index++) {
            let letra=password.charAt(index)
            let numByte=letra.charCodeAt();
            numByte=numByte/5
            decencript=decencript+String.fromCharCode(numByte)
        }
        return decencript.toString()
    }
}
module.exports=Key