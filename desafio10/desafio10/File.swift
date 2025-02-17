import Foundation


struct personagem : Decodable, Hashable{    
    var displayName:String
    var description: String
    var displayIcon: String
    var abilities: [abilidades]?
    
}


struct api : Decodable{
    var data: [personagem]
}


struct abilidades: Decodable, Hashable{
    var slot:String?
    var displayName:String?
    var description:String?
    var displayIcon:String?
}
