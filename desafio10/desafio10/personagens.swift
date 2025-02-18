import SwiftUI

struct personagens: View {
    @StateObject var vmPesonagem = personagemViewModel()
    @State private var selectedLoc : personagem = personagem(displayName: "", description:"", displayIcon:"")
    
    @State var nameper:String = "Gekko"
    @State var displayIconA = ""
    @State var displayIconB = ""
    @State var displayIconC = ""
    @State var displayIconD = ""
    
    @State var displayName1 = ""
    @State var displayName2 = ""
    @State var displayName3 = ""
    @State var displayName4 = ""
    
    @State var description1 = ""
    @State var description2 = ""
    @State var description3 = ""
    @State var description4 = ""
    
    
    var idPlay: [String: String] = ["Gekko": "cPzn6HIrf9g", "Fade": "b9hVuerqMVo"]

    
    var body: some View {
        
        
        NavigationStack{
            
            
            ZStack{
                
                Color.bluedark.ignoresSafeArea()
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
                        
//                        nameper = String(selectedLoc.displayName)
                        
                        displayIconA = String(selectedLoc.abilities![0].displayIcon!)
                        displayIconB = String(selectedLoc.abilities![1].displayIcon!)
                        displayIconC = String(selectedLoc.abilities![2].displayIcon!)
                        displayIconD = String(selectedLoc.abilities![3].displayIcon!)
                        
                        displayName1 = String(selectedLoc.abilities![0].displayName!)
                        displayName2 = String(selectedLoc.abilities![1].displayName!)
                        displayName3 = String(selectedLoc.abilities![2].displayName!)
                        displayName4 = String(selectedLoc.abilities![3].displayName!)
                        
                        description1 = String(selectedLoc.abilities![0].description!)
                        description2 = String(selectedLoc.abilities![1].description!)
                        description3 = String(selectedLoc.abilities![2].description!)
                        description4 = String(selectedLoc.abilities![3].description!)
                        
                       
                    }
                    
                    
                    
                    Text("\(selectedLoc.displayName)").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                    
                    
                    
                    AsyncImage(url: URL(string: selectedLoc.displayIcon)) { image in image
                            .resizable()
                            .frame(width: 300, height: 250)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    } placeholder: {
                        Color.gray
                    }.padding()
                    
                    Text(selectedLoc.description)
                        .frame(width: 300, height: 200)
                        .padding()
                        .background(Color.gray.opacity(0.8))
                        .cornerRadius(8)
                    
                    
                    
                    
                    
                    
                    
                    HStack{
                        
                        
                        NavigationLink(destination: Video(id: idPlay[nameper]!)) {
                            AsyncImage(url: URL(string: "https://www.freepnglogos.com/uploads/play-button-png/index-media-cover-art-play-button-overlay-5.png")) { image in image
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                
                            } placeholder: {
                                Color.gray
                                
                            }
                        }
                        Spacer()
                        NavigationLink(destination: Infos(slot: "Ability1", displayName:displayName1, description: description1, displayIcon: displayIconA)) {
                            AsyncImage(url: URL(string: displayIconA)) { image in image
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                
                            } placeholder: {
                                Color.gray
                                
                            }
                        }
                        
                        
                        
                        
                        
                        
                        
                        Spacer()
                        
                        NavigationLink(destination: Infos(slot: "Ability2", displayName:displayName2, description: description2, displayIcon: displayIconB)) {
                            AsyncImage(url: URL(string: displayIconB)) { image in image
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                
                            } placeholder: {
                                Color.gray
                                
                            }
                        }
                        
                        Spacer()
                        
                        NavigationLink(destination: Infos(slot: "Ability3", displayName:displayName3, description: description3, displayIcon: displayIconC)) {
                            AsyncImage(url: URL(string: displayIconC)) { image in image
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                
                            } placeholder: {
                                Color.gray
                                
                            }
                        }
                        
                        
                        Spacer()
                        
                        NavigationLink(destination: Infos(slot: "Ability4", displayName:displayName4, description: description4, displayIcon: displayIconB)) {
                            AsyncImage(url: URL(string: displayIconD)) { image in image
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                
                            } placeholder: {
                                Color.gray
                                
                            }
                        }
                    }.padding()
                    
                }
                
                
                
            }.onAppear(){vmPesonagem.fetch()}
        }
    }
}

#Preview {
    personagens()
}
