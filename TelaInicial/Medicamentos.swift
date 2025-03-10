import SwiftUI

struct Medicamentos: View {
    
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
                    Image(systemName: "pill.fill")
                        .scaledToFit()
                        .font(.system(size: 65))
                        .offset(CGSize(width: 0, height: -50))
                    Text("Medicamentos Indicados...")
                        .font(.title)
                        .frame(maxWidth:.infinity, alignment: .leading)
                        .padding(10)
                    Spacer()
                    HStack{
                        Image(systemName: "medical.thermometer.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70, height: 70)
                            .padding(10)
                        
                            Text("Os antiparasitários são medicamentos usados para tratar doenças causadas por parasitas.")
                                .padding(15)
                 
                    }.background(Color(.green)).cornerRadius(15)
                    HStack{
                        Text("Antibiótico combate infecções por microrganismos, mas não vírus.")
                            .padding(15)
                        Image(systemName:"cross.vial")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70, height: 70)
                    }.background(Color(.yellow)).cornerRadius(15).padding(10)
                    HStack{
                        Image(systemName: "exclamationmark.triangle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70, height: 70)
                            .padding(15)
                        Text("Para o uso de qualquer medicamento, consulte um médico para receber orientação.")
                            .padding(10)
                    }.background(Color(.blue)).cornerRadius(15)
                    Spacer()
                   
                }.padding()
            }//vstack
        }//zstack out
    }
}

#Preview {
    Medicamentos()
}
