//
//  ContentView.swift
//  Desafio4
//
//  Created by Turma01-9 on 07/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var showingAlert = false
    var body: some View {
        
        
            
            ZStack{
                
                
                Image("captura")
                    .resizable()
                    .frame(width: 800, height: 800)
                    .opacity(0.2)
                
                
                
                
                Image("logo")
                    .resizable()
                    .frame(width:180, height: 140)
                
                
                
                Image("truck")
                    .resizable()
                    .frame(width:190, height: 100)
                    .offset(x:10, y:120)
                
                
                
                TextField("Entre com seu nome", text: $name)
                      .multilineTextAlignment(.center)
                      .offset(x:10, y:-300)
                      
                
                Text("Bem vindo, \(name)")
                    .multilineTextAlignment(.center)
                    .offset(x:10, y:-350)
                    .font(.largeTitle)
                    
                

                    
                Button("Entrar") {
                    showingAlert = true
                }
                .offset(x:10, y:350)
                .alert("Alerta! Você ira iniciar o desafio da aula agora", isPresented: $showingAlert) {
                    Button("OK", role: .cancel) { }}
                    
                
            }
            
            
        
    }
}

#Preview {
    ContentView()
}
