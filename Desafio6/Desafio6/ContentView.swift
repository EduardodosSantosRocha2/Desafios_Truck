//
//  ContentView.swift
//  Desafio6
//
//  Created by Turma01-9 on 11/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            VStack {
                TabView{
                    Rosa()
                        .badge(2)
                        .tabItem{Label("Rosa", systemImage: "paintbrush")}
                    Azul()
                        .tabItem{Label("Azul", systemImage: "paintbrush.pointed.fill")}
                    
                    Cinza()
                        .tabItem{Label("Cinza", systemImage: "paintpalette.fill")}
                    Lista()
                        .tabItem{Label("Lista", systemImage: "list.bullet")}
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
