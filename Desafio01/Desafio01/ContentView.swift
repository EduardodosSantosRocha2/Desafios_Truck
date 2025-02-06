//
//  ContentView.swift
//  Desafio01
//
//  Created by Turma01-9 on 06/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
        
            HStack{
                Rectangle()
                    .fill(Color(.red))
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Spacer()
                
                Rectangle()
                    .fill(Color(.green))
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                
            }
            Spacer()
            HStack{
                Rectangle()
                    .fill(Color(.blue))
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Spacer()
                
                Rectangle()
                    .fill(Color(.yellow))
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                
            }
                
                            
        }.padding()
    }
}

#Preview {
    ContentView()
}
