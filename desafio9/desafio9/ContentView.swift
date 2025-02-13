//
//  ContentView.swift
//  desafio9
//
//  Created by Turma01-9 on 13/02/25.
//

import SwiftUI
import MapKit


struct Location : Hashable{
    let name : String
    let flag : String
    let latitude: Double
    let longitude: Double
    let description: String
}







struct ContentView: View {
    
    @State  var name1 = ""
    @State  var flag1 = ""
    @State  var latitude1 = 0.0
    @State  var longitude1 = 0.0
    @State  var description1 = ""
    
    
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -18.7348, longitude:-47.4963),
            span: MKCoordinateSpan(latitudeDelta:1, longitudeDelta:1)
            
        )
    )
    
    @State private var selectedLoc = 0
    

    
    var arrayLoc = [
        Location(
            
            name:"Cristo Redentor",
            
            flag: "https://:3.googleusercontent.com/p/AF1QipMzAJtDqbSYNAY_2gTWNOcB9a-Ao4qMuN3n5psO=s1360-w1360-h1020",
                        
            latitude:-22.951804,
            
            longitude: -43.210760,
            
            
            description: "Cristo Redentor é uma estátua que retrata Jesus Cristo localizada no topo do morro do Corcovado, a 709 metros acima do nível do mar, dentro do Parque Nacional da Tijuca."
            
        ),
        
        Location(
            
            name:"Torre Eiffel",
            
            flag: "https://lh3.googleusercontent.com/p/AF1QipPTxHG0_dJooayYKzCB004tccRM5MhxYp6KWa53=s1360-w1360-h1020",
                        
            latitude: 48.858093,
            
            longitude: 2.294694,
            
            
            description: "Torre Eiffel é uma torre treliçada de ferro forjado no Champ de Mars, em Paris, França. Tem o nome do engenheiro Gustave Eiffel, cuja empresa projetou e construiu a torre de 1887 a 1889."
            
            
        ),
        
        Location(
            
            name:"Taj Mahal",
            
            flag: "https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcSL8Fv89cc6B0-SZZb_qEdHfsRJzHZ0hYm9WPyLDtGzpcmRiXwEFhkZz7Kr1A1CYJRmhusjcy8sfYJtI7KRipKkPJB3gt0ygCjJ0giS7l0",
                        
            latitude: 27.173891,
            
            longitude: 78.04206,
            
            
            description: "Torre Eiffel é uma torre treliçada de ferro forjado no Champ de Mars, em Paris, França. Tem o nome do engenheiro Gustave Eiffel, cuja empresa projetou e construiu a torre de 1887 a 1889."
            
        ),
        
        
        
    ]
    
  
    
    let colours = ["Cristo Redentor", "Torre Eiffel", "Taj Mahal"]
    
  
    @State var shouldPresentSheet = false
    
    var body: some View {
        
        
        
        
        ZStack {
            
            VStack{
            
            
                
                    Picker(selection: $selectedLoc, label: Text("Select Localization")) {
                        ForEach(arrayLoc.indices, id: \.self) { index in
                            Text(arrayLoc[index].name).tag(index)
                        }
                        .pickerStyle(MenuPickerStyle())
                        .frame(width: 300)
                        .padding()
                        .background(Color.yellow.opacity(0.8))
                        .cornerRadius(8)
                        
                        
                        
                        
                    }.onChange(of: selectedLoc) {
                        newIndex in
                        
                        name1 = arrayLoc[newIndex].name
                        flag1 = arrayLoc[newIndex].flag
                        latitude1 = arrayLoc[newIndex].latitude
                        longitude1 = arrayLoc[newIndex].longitude
                        description1 = arrayLoc[newIndex].description
                        
                        
                        position = MapCameraPosition.region(
                            MKCoordinateRegion(
                                center: CLLocationCoordinate2D(latitude: latitude1, longitude: longitude1),
                                    span: MKCoordinateSpan(latitudeDelta:1, longitudeDelta:1)
                                
                            )
                        )
                    
                        
                    }

                
                    
                    
                
                
                   
                
                
                Map(position: $position)
                    .ignoresSafeArea()
                
                
                
                Text("\(name1)")
                
                Button("Maravilhas do Mundo Moderno") {
                    shouldPresentSheet.toggle()
                }
                .sheet(isPresented: $shouldPresentSheet) {
                    print("Sheet dismissed!")
                } content: {
                    SheetView(name: name1, flag: flag1, latitude: latitude1, longitude: longitude1, description: description1)
                }

                
                
              
                
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
