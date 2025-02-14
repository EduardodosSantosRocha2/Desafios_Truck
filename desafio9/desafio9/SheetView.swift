//
//  SheetView.swift
//  Desafio09_Mapas
//
//  Created by Turma01-7 on 13/02/25.
//

import SwiftUI

struct SheetView: View {
    @State private var color: Color = .yellow
    
    @State  var name = ""
    @State  var flag = ""
    @State  var latitude = 0.0
    @State  var longitude = 0.0
    @State  var description = ""

    
    var body: some View {
        ZStack{
            color.ignoresSafeArea()
            
            VStack{
                
             
                    
                    
    
                    AsyncImage(url: URL(string: flag)) { image in image
                            .resizable()
                            .frame(width: 300, height: 250)
                            
                            
                    } placeholder: {
                        Color.gray
                    }
                
                    
                  
                
                    Text(name)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.gray)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                    
                
                    Text(description)
                    .frame(width: 320, height: 380)
                    .padding()
                    .background(Color.gray.opacity(0.8))
                    .cornerRadius(8)
                
                
                
            }
            
            
            
    
            
        }




    }
}

#Preview {
    SheetView(name:"", flag:"https://lh3.googleusercontent.com/p/AF1QipPTxHG0_dJooayYKzCB004tccRM5MhxYp6KWa53=s1360-w1360-h1020", latitude:0.0, longitude:0.0, description:"")
}

