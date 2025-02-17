import Foundation

class personagemViewModel: ObservableObject{
    @Published var arrayPesonagens : [personagem] = []
    
    func fetch(){
        var url = "https://valorant-api.com/v1/agents"
        var task = URLSession.shared.dataTask(with: URL(string:url)!){
            data, response, error in
            
            do{
                self.arrayPesonagens = try JSONDecoder().decode(api.self, from:data!).data
                
                
            }catch{
                print(error)
            }
        }
        task.resume()
        
    }
}
