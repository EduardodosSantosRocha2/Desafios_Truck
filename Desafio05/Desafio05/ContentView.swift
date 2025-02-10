//
//  ContentView.swift
//  Desafio05
//
//  Created by Turma01-9 on 10/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var value = 0.0
    @State private var distance = 0.0
    @State private var time = 0.0
    @State private var image = "quest"
    @State private var col :Color = .gray
    @State private var entrar = false
    var body: some View {
        ZStack{
            col
                .ignoresSafeArea()
            VStack {
      
                
                VStack{
                    Text("Digite a distancia (KM)")
                    TextField("0", value:$distance, format: .number)
                        .multilineTextAlignment(.center)
                    
                }
                
                VStack{
                    Text("Digite o tempo (h)")
                    TextField("0", value:$time, format: .number)
                        .multilineTextAlignment(.center)
                }
                
                HStack{
                    Button("Entrar") {
                        entrar = true
                        value = distance/time
                        
                        if(value > 0 && value <= 9.9 ){
                            image = "turtle"
                            col = .verdeclaro
                        }else if(value > 9.9 && value <= 29.9 ){
                            image = "elephant"
                            col = .azulclaro
                        }else if(value > 29.9 && value <= 69.9 ){
                            image = "avestruz"
                            col = .laranjaclaro
                        }else if(value > 69.9 && value <= 89.9 ){
                            image = "lion"
                            col = .amareloclaro
                        }else if(value > 89.9 && value <= 130 ){
                            image = "guepardo"
                            col = .vermelhoclaro
                        }
                        
                        
                        
                        
                    }
                    .buttonStyle(.bordered)
                    .tint(.black)
                    
                    
                }
                
                
                HStack{
                    Text(String(format:"%.2f Km/h",value))
                }
                
                HStack{
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 250, height: 250)
                    
                }
                
                
                VStack{
                    VStack{
                        HStack{
                            VStack{
                                Text("Tartaruga")
                                    .foregroundColor(.white)
                            }
                            Spacer()
                            VStack{
                                Text("(0-9.9km/h)")
                                    .foregroundColor(.white)
                            }
                            Spacer()
                            VStack{
                                Circle()
                                    .fill(.verdeclaro)
                                    .frame(width: 20, height: 20)
                            }
                            
                        }
                        HStack{
                            VStack{
                                Text("Elefante")
                                    .foregroundColor(.white)
                            }
                            Spacer()
                            VStack{
                                Text("(10-29.9km/h)")
                                    .foregroundColor(.white)
                            }
                            Spacer()
                            VStack{
                                Circle()
                                    .fill(.azulclaro)
                                    .frame(width: 20, height: 20)
                            }
                        }
                        
                        HStack{
                            VStack{
                                Text("Avestruz")
                                    .foregroundColor(.white)
                            }
                            Spacer()
                            VStack{
                                Text("(30-69.9km/h)")
                                    .foregroundColor(.white)
                            }
                            Spacer()
                            VStack{
                                Circle()
                                    .fill(.laranjaclaro)
                                    .frame(width: 20, height: 20)
                            }
                        }
                        
                        HStack{
                            VStack{
                                Text("Leao")
                                    .foregroundColor(.white)
                            }
                            Spacer()
                            VStack{
                                Text("(70-89.9km/h)")
                                    .foregroundColor(.white)
                            }
                            Spacer()
                            VStack{
                                Circle()
                                    .fill(.amareloclaro)
                                    .frame(width: 20, height: 20)
                            }
                        }
                        
                        HStack{
                            VStack{
                                Text("Guepardo")
                                    .foregroundColor(.white)
                            }
                            Spacer()
                            VStack{
                                Text("(90-130km/h)")
                                    .foregroundColor(.white)
                            }
                            Spacer()
                            VStack{
                                Circle()
                                    .fill(.vermelhoclaro)
                                    .frame(width: 20, height: 20)
                            }
                        }
                        
                        
                    }
                    .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
                    .background(.black)
                    .cornerRadius(7.0)
                    
                    
                }
                
                
                
            }.padding()
        }
        
        
        

                
        
    }
}

#Preview {
    ContentView()
}
