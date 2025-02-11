//
//  Lista.swift
//  Desafio6
//
//  Created by Turma01-9 on 11/02/25.
//

import SwiftUI

struct Lista: View {
    var body: some View {
        List {
            
            HStack{
                Text("Hello World")
                Spacer()
                Image(systemName: "paintbrush")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
            }
            
            HStack{
                Text("Hello World")
                Spacer()
                Image(systemName: "paintbrush.pointed.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
            }
            
            HStack{
                Text("Hello World")
                Spacer()
                Image(systemName: "paintpalette.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
            }
        }
    }
    
}

#Preview {
    Lista()
}
