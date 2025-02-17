//
//  Infos.swift
//  desafio10
//
//  Created by Turma01-9 on 17/02/25.
//

import SwiftUI

struct Infos: View {
    
    @State var displayName = "Gekko"
    @State var  description = "Gekko the Angeleno leads a tight-knit crew of calamitous creatures. His buddies bound forward, scattering enemies out of the way, with Gekko chasing them down to regroup and go again."
    var body: some View {
        ZStack{
            
            VStack {
                
                Text("\(displayName)").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                
                
                AsyncImage(url: URL(string: "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/displayicon.png")) { image in image
                        .resizable()
                        .frame(width: 300, height: 250)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                } placeholder: {
                    Color.gray
                }
                
                
                Text(description)
                    .frame(width: 300, height: 200)
                    .padding()
                    .background(Color.gray.opacity(0.8))
                    .cornerRadius(8)
                
                
                
                
                
                HStack{
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
        }
    }
}

#Preview {
    Infos()
}
