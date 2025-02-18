//
//  Infos.swift
//  desafio10
//
//  Created by Turma01-9 on 17/02/25.
//

import SwiftUI

struct Infos: View {
    
    @State var slot = ""
    @State var  displayName = ""
    @State var description = ""
    @State var  displayIcon = ""
    
    
    
    var body: some View {
        
    
        
        
        ZStack{
            Color.bluedark.ignoresSafeArea()
            VStack {
                
                Text("\(slot)").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                Text("\(displayName)").font(.title2).foregroundColor(.white)
                
                
                
                AsyncImage(url: URL(string: displayIcon)) { image in image
                        .resizable()
                        .frame(width: 200, height: 230)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                } placeholder: {
                    Color.gray
                }.padding()

                
                ScrollView{
                    Text(description)
                        .frame(width: 300, height: 200)
                        .padding()
                        .background(Color.gray.opacity(0.8))
                        .cornerRadius(8)
                        .foregroundColor(.white)
                    
                    
                }
                
                
               
            }
        }
    }
}

#Preview {
    Infos(slot:"", displayName:"", description:"", displayIcon: "")
}
