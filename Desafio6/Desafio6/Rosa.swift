//
//  Rosa.swift
//  Desafio6
//
//  Created by Turma01-9 on 11/02/25.
//

import SwiftUI

struct Rosa: View {
    @State var cor:Color = .pink
    var body: some View {
        
        
        
            ZStack{
            
            Color.pink.edgesIgnoringSafeArea(.top)
            
            Circle()
                    .frame(height: 300)
            Image(systemName: "paintbrush")
                    
                    .resizable()
                    .frame(width: 200, height: 200)
                    .foregroundColor(.gray)
                  
                    
                    
                    
                    
        }
        
        
    }
}

#Preview {
    Rosa()
}
