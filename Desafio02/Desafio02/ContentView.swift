//
//  ContentView.swift
//  Desafio02
//
//  Created by Turma01-9 on 06/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Image("bubu")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 100)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                
                VStack{
                    Text("HackaTruck")
                        .foregroundColor(Color.red)
                    Text("77 universidades")
                        .foregroundColor(Color.blue)
                    Text("5 regios do Brasil")
                        .foregroundColor(Color.yellow)
                }
                    
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
