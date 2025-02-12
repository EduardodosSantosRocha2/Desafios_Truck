import SwiftUI

struct Song : Identifiable {
    var id : Int
    var name : String
    var artist : String
    var capa : String
}


var arrayMusica = [
    Song(id : 1, name: "Shark",artist: "Krawk", capa: "https://i1.sndcdn.com/artworks-4JIqVayWpmaW-0-t240x240.jpg" ),
    
    Song(id : 2, name: "Eurotrip",artist: "Krawk", capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0aI3y-7d73zvt76Ii0wE3XLVudQzwe4Ck1A&s" ),
    
    Song(id : 3, name: "Trajadão de fé",artist: "Krawk", capa: "https://akamai.sscdn.co/uploadfile/letras/fotos/6/4/b/b/64bbdd083b0812f6a78e5397c32c42c6.jpg" ),
    
    
    Song(id : 4, name: "Fácil",artist: "Krawk .ft Léozin", capa: "https://images.genius.com/4ba9e0652bbc4c17af7a56e3e4fcce46.1000x1000x1.png" ),
    
    Song(id : 5, name: "Fácil",artist: "Krawk .ft Léozin", capa: "https://images.genius.com/4ba9e0652bbc4c17af7a56e3e4fcce46.1000x1000x1.png" ),
    
    Song(id : 6, name: "Fácil",artist: "Krawk .ft Léozin", capa: "https://images.genius.com/4ba9e0652bbc4c17af7a56e3e4fcce46.1000x1000x1.png" ),
    
    Song(id : 7, name: "Fácil",artist: "Krawk .ft Léozin", capa: "https://images.genius.com/4ba9e0652bbc4c17af7a56e3e4fcce46.1000x1000x1.png" ),
    
    Song(id : 8, name: "Fácil",artist: "Krawk .ft Léozin", capa: "https://images.genius.com/4ba9e0652bbc4c17af7a56e3e4fcce46.1000x1000x1.png" ),
    
    Song(id : 9, name: "Fácil",artist: "Krawk .ft Léozin", capa: "https://images.genius.com/4ba9e0652bbc4c17af7a56e3e4fcce46.1000x1000x1.png" ),
    
    
    Song(id : 10, name: "Fácil",artist: "Krawk .ft Léozin", capa: "https://images.genius.com/4ba9e0652bbc4c17af7a56e3e4fcce46.1000x1000x1.png" ),
    
    Song(id : 11, name: "Fácil",artist: "Krawk .ft Léozin", capa: "https://images.genius.com/4ba9e0652bbc4c17af7a56e3e4fcce46.1000x1000x1.png" ),
]

struct ContentView: View {
    var body: some View {
        
        
        
        NavigationStack{
            
            
            
            ZStack {
                LinearGradient(colors: [.blue, .black],
                               startPoint: .top,
                               endPoint: .center)
                
                
                
                VStack{
                    
                    VStack{
                        Image("bubu")
                            .resizable()
                            .frame(width: 200, height: 200, alignment: .bottom)
                        
                        Text("Hacka FM")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundStyle(.white)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                    
                    
                    HStack{
                        Image("bubu")
                            .resizable()
                            .frame(width: 20, height: 20, alignment: .bottom)
                        
                        Text("Hacka FM")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundStyle(.white)
                            .font(.title3)
                    }
                    
                    
                    
                    
                    
                    VStack{
                        
                        ScrollView{
                            
                            ForEach(arrayMusica){ item in
                                
                                
                                NavigationLink(destination: TelaMusica(index: item)){
                                    
                                    
                                    HStack{
                                        
                                        AsyncImage(url: URL(string: item.capa)) { image in
                                            image
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                        } placeholder: {
                                            Color.gray
                                        }
                                        .frame(width: 50, height: 50, alignment: .leading)
                                        
                                        
                                        
                                        Text(item.name)
                                            .foregroundStyle(.white)
                                        
                                        Spacer()
                                        
                                        Image(systemName: "ellipsis")
                                            .foregroundColor(.white)
                                        
                                    }.frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    
                                    
                                    
                                }
                                
                                
                                
                            }
                            
                            
                        }
                        
                        
                    }
                    
                    
                }
                
                
                
                
            }
            
        }
        
    }
    
}

#Preview {
    ContentView()
}
