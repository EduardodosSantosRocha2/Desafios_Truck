import SwiftUI

struct Sintomas: View {
    var body: some View {
        ZStack{
                    VStack{
                        
                        ZStack {
                            
                            Color.azulCinza.edgesIgnoringSafeArea(.all)
                            Text("ProtozoAIro")
                                .font(.system(size: 34, weight: .regular, design: .monospaced))
                                .font(.title)
                                .bold()
                                .padding()
                                .offset(y: -50)
                            Circle()
                                .foregroundColor(.white)
                                .frame(width: 210, height: 210)
                                .offset(CGSize(width: 0, height: 120.0))
                            
                        }//zstack inner
                        .frame(height: 200)
                        VStack{
                            Image(systemName: "cross.case")
                                .scaledToFit()
                                .font(.system(size: 65))
                                .offset(CGSize(width: 0, height: -50))
                            Text("Alguns Sintomas...")
                                .font(.title)
                                .frame(maxWidth:.infinity, alignment: .leading)
                                .padding(10)
                            Spacer()
                            HStack{
                                Image(systemName: "medical.thermometer.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 60, height: 60)
                                    .padding(10)
                                Text("Febre e Calafrios são sintomas comuns da malária, causada pelo parasita Plasmodium.")
                                    .padding(15)
                            }.background(Color(.green)).cornerRadius(15)
                            HStack{
                                Text("Suar Frio e sudorese também pode ser uma característica da doença.")
                                    .padding(15)
                                Image("suarFrio")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }.background(Color(.yellow)).cornerRadius(15).padding(10)
                            HStack{
                                Image("homem")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 70, height: 70)
                                    .padding(10)
                                Text("Há pessoas que, antes de apresentarem tais manifestações, sentem náuseas, vômitos, cansaço e falta de apetite.")
                                    .padding(10)
                            }.background(Color(.blue)).cornerRadius(15)
                            Spacer()
                           
                        }
                    }//vstack
                }//zstack out
    }
}

#Preview {
    Sintomas()
}
