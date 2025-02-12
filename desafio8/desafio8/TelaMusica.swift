//
//  TelaMusica.swift
//  desafio8
//
//  Created by Turma01-9 on 12/02/25.
//

import SwiftUI

struct TelaMusica: View {
    @State var index: Song
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue, .black],
                           startPoint: .top,
                           endPoint: .center)
            
            VStack{
                
                HStack{
                    
                    AsyncImage(url: URL(string: index.capa)) { image in
                        image
                            .resizable()
                    } placeholder: {
                        Color.gray
                    }
                    .frame(width: 200, height: 200, alignment: .leading)
                }.padding()
                
                VStack{
                    Text("\(index.name)")
                        .foregroundStyle(.white)
                        .font(.title2)
                    
                    Text("\(index.artist)")
                        .foregroundStyle(.white)
                        .font(.title3)
                }
                
                HStack {
                                    Button(action: { print("Shuffle") }) {
                                        Image(systemName: "shuffle")
                                            .foregroundColor(.white)
                                    }
                                    Spacer()
                                    Button(action: { print("Back") }) {
                                        Image(systemName: "backward.end.fill")
                                            .foregroundColor(.white)
                                    }
                                    Spacer()
                                    Button(action: { print("Next") }) {
                                            Image(systemName: "play.fill")
                                            .foregroundColor(.white)
                                    }
                                    Spacer()
                                    Button(action: { print("Next") }) {
                                        Image(systemName: "forward.end.fill")
                                            .foregroundColor(.white)
                                    }
                                    Spacer()
                                    Button(action: { print("Repeat") }) {
                                        Image(systemName: "repeat")
                                            .foregroundColor(.white)
                                    }
                }.padding()
                
            }
            
        }
        
    }
}

#Preview {
    TelaMusica(index: Song(id: 1, name: "aaaaaa", artist: "bbbbbb", capa: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Dialog-error-round.svg/2048px-Dialog-error-round.svg.png"))
}
