import SwiftUI

struct ContentView: View {
    @StateObject var vmPesonagem = personagemViewModel()
    @State private var selectedLoc : personagem = personagem(displayName: "", description:"", displayIcon:"")
    @State var displayName = ""
    @State var  description = ""
    @State var displayIcon = ""
    @State var slot = ""
    @State var displayNameA = ""
    @State var descriptionA = ""
    @State var displayIconA = ""
    
    var body: some View {
        
        
        ZStack{
            
            
            VStack{
                Picker(selection: $selectedLoc, label: Text("Select Agent")) {
                    ForEach(vmPesonagem.arrayPesonagens, id: \.self) { per in
                        Text(per.displayName)
                    }
                    .pickerStyle(MenuPickerStyle())
                    .frame(width: 100)
                    .padding()
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(8)
                }.onChange(of: selectedLoc) {
//                    print(selectedLoc.abilities.displayIcon!)
                }
                
                
                
                Text("\(selectedLoc.displayName)").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                
                
                AsyncImage(url: URL(string: selectedLoc.displayIcon)) { image in image
                        .resizable()
                        .frame(width: 300, height: 250)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                } placeholder: {
                    Color.gray
                }
                
                Text(selectedLoc.description)
                    .frame(width: 300, height: 200)
                    .padding()
                    .background(Color.gray.opacity(0.8))
                    .cornerRadius(8)
                
                
                
                
                
                HStack{
                    AsyncImage(url: URL(string: displayIconA)) { image in image
                            .resizable()
                            .frame(width: 50, height: 50)
                    } placeholder: {
                        Color.gray
                    }
                    
                    Spacer()
                    
                    AsyncImage(url: URL(string: displayIconA)) { image in image
                            .resizable()
                            .frame(width: 50, height: 50)
                    } placeholder: {
                        Color.gray
                    }
                    
                    Spacer()
                    
                    AsyncImage(url: URL(string: "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/displayicon.png")) { image in image
                            .resizable()
                            .frame(width: 50, height: 50)
                    } placeholder: {
                        Color.gray
                    }
                    
                    
                    Spacer()
                    
                    AsyncImage(url: URL(string: "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/displayicon.png")) { image in image
                            .resizable()
                            .frame(width: 50, height: 50)
                    } placeholder: {
                        Color.gray
                    }
                }.padding()
                
            }
            

            
        }.onAppear(){vmPesonagem.fetch()}
        
    }
}

#Preview {
    ContentView()
}
