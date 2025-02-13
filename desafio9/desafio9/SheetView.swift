//
//  SheetView.swift
//  Desafio09_Mapas
//
//  Created by Turma01-7 on 13/02/25.
//

import SwiftUI

struct SheetView: View {
    @State private var color: Color = .yellow
    @State private var imagemURL: String = "URL DA IMAGEM"
    @State private var titulo: String = "TÍTULO AQUI"
    @State private var descricao: String = "DESCRIÇÃO AQUI"
    
    @State  var name = ""
    @State  var flag = ""
    @State  var latitude = 0.0
    @State  var longitude = 0.0
    @State  var description = ""

    
    var body: some View {
        Text("\(name)")
        ZStack{
            color.ignoresSafeArea()
            
            VStack{
                
                HStack{
                    
                    
    
                    AsyncImage(url: URL(string: flag)) { image in image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 300, height: 200, alignment: .leading)
                            
                    } placeholder: {
                        Color.gray
                    }
                    .frame(width: 300, height: 200, alignment: .leading)
                    
                    
                    
                    
                }
                Spacer()
                    .frame(height: 50)
                HStack{
                    Text(name)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.gray)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
                Spacer()
                    .frame(height: 50)
                HStack{
                    Text(description)
                }
                .frame(width: 320, height: 380)
                .padding()
                .background(Color.gray.opacity(0.8))
                .cornerRadius(8)
                
                
                
            }
            
            
            VStack{
                
            }
            
            
            
            
            
            
            
            
            
            
            
        }




    }
}

#Preview {
    SheetView(name:"", flag:"", latitude:0.0, longitude:0.0, description:"")
}

