//
//  Cinza.swift
//  Desafio6
//
//  Created by Turma01-9 on 11/02/25.
//

import SwiftUI

struct Cinza: View {
    var body: some View {
        
        ZStack{
        
        Color.gray.edgesIgnoringSafeArea(.top)
        
        Circle()
                .frame(height: 300)
        Image(systemName: "paintpalette.fill")
                
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(.gray)
              
                
                
                
                
    }
    }
}

#Preview {
    Cinza()
}
