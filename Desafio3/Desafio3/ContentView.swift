//
//  ContentView.swift
//  Desafio03_Instagram
//
//  Created by Turma01-7 on 07/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            HStack(content: {
                Image("bubu")
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 100, height:120)
                
                VStack(content: {
                    HStack(content: {
                        Text("8")
                    })
                    HStack(content: {
                        Text("Posts")
                    })
                })
                
                VStack(content: {
                    HStack(content: {
                        Text("12k")
                    })
                    HStack(content: {
                        Text("Seguidores")
                    })
                })
                
                VStack(content: {
                    HStack(content: {
                        Text("2k")
                    })
                    HStack(content: {
                        Text("Seguindo")
                    })
                })
                
               
                
            })
            
           
            HStack{
                Button("Editar Perfil") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .background(.gray)
                
            }
           
            
            HStack{
                
                Text("Nome Sobrenome")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            HStack{
                
                Text("Nome Sobrenome")
                    .frame(maxWidth: .infinity, alignment: .leading)
                            
            }
            
            
            
                       
            HStack{
                Image(systemName: "circle.grid.3x3.fill")
                    .frame(width: 80, height: 30, alignment: .center)
                Spacer()
               
                Image(systemName: "laptopcomputer")
                    .frame(width: 80, height: 30, alignment: .center)

                Spacer()
                Image(systemName: "person.crop.circle")
                    .frame(width: 80, height: 30, alignment: .center)
            }
                   
            
            
            
            
            HStack{
                Rectangle()
                    .frame(width: 120, height: 110)
                    .foregroundColor(.gray)

                Rectangle()
                    .frame(width: 120, height: 110)
                    .foregroundColor(.gray)
                Rectangle()
                    .frame(width: 120, height: 110)
                    .foregroundColor(.gray)
                
            }
            HStack{
                Rectangle()
                    .frame(width: 120, height: 110)
                    .foregroundColor(.gray)

                Rectangle()
                    .frame(width: 120, height: 110)
                    .foregroundColor(.gray)
                Rectangle()
                    .frame(width: 120, height: 110)
                    .foregroundColor(.gray)
                
            }
            HStack{
                Rectangle()
                    .frame(width: 120, height: 110)
                    .foregroundColor(.gray)

                Rectangle()
                    .frame(width: 120, height: 110)
                    .foregroundColor(.gray)
                Rectangle()
                    .frame(width: 120, height: 110)
                    .foregroundColor(.gray)
                
            }
            HStack{
                Rectangle()
                    .frame(width: 120, height: 110)
                    .foregroundColor(.gray)

                Rectangle()
                    .frame(width: 120, height: 110)
                    .foregroundColor(.gray)
                Rectangle()
                    .frame(width: 120, height: 110)
                    .foregroundColor(.gray)
                
            }
        }
        .padding()
    }
    
}

#Preview {
    ContentView()
}

