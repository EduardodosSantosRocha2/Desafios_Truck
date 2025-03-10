import SwiftUI

// Representa uma localização no mapa
struct InfosEspecialistasStruct: Identifiable, Hashable {
    let id = UUID()
    let nome: String
    let latitude: Double
    let longitude: Double
    let numeroRegistro: String
    let RQE: String
    let cidade: String
    let telefone: String
    let endereco: String
    let img: String
}

struct Especialistas: View {
    
    @State private var showingSheetEsp: [Bool]
    
    
    let infos = [
        InfosEspecialistasStruct(nome: "Dra. Bianca Eliza Hoekstra", latitude: -25.104483958735976, longitude: -50.16374642596675, numeroRegistro: "PR 36825", RQE: "29788", cidade: "Ponta Grossa (Paraná)", telefone: "(42) 3026-8001", endereco: "R. Nilo Peçanha, 1361 - Estrela", img: "https://s3-sa-east-1.amazonaws.com/doctoralia.com.br/doctor/99d2be/99d2be7dfe44d3faa563ade0bba163ad_220_square.jpg"),
        InfosEspecialistasStruct(nome: "Dr. Alexandre Blikstad Mauro", latitude: -23.18590684476899, longitude: -46.89716927325076, numeroRegistro: "SP 161803", RQE: "68772", cidade: "Jundiaí (São Paulo)", telefone: "(11) 3109-9941", endereco: "R. Major Gustavo Storch, 125, Sala 402, Vila Virgínia", img: "https://s3-sa-east-1.amazonaws.com/doctoralia.com.br/doctor/333454/3334549e3d570357e3da9f394f5c2ab2_large.jpg"),
        
        InfosEspecialistasStruct(nome: "Dra. Valeria de Morais Silveira Telles", latitude: -23.606899968925767, longitude: -46.594502175087065, numeroRegistro: "-", RQE: "-", cidade: "Cidade Nova Heliópoli (São Paulo)", telefone: "(11) 2067-0300", endereco: "R. Cônego Xavier, 276", img: "https://s3-sa-east-1.amazonaws.com/doctoralia.com.br/doctor/2741e7/2741e77595a766f854cd171843d6e2ca_large.jpg"),
        
        InfosEspecialistasStruct(nome: "Dr. Roger Lopes Batista", latitude: -18.939423306270662, longitude: -46.99574579055141, numeroRegistro: "MG 77747", RQE: "61580", cidade: "Patrocinio (MG)", telefone: "(34) 3874-0042", endereco: "R. Cel. Rabêlo, 1687, Centro", img: "https://s3-sa-east-1.amazonaws.com/doctoralia.com.br/doctor/1befc7/1befc7dd9be86a29c45c6774be387e2c_large.jpg"),
        
        
        InfosEspecialistasStruct(nome: "Dra. Alexandra Karina Dias da Silva", latitude: -18.651179644016807, longitude: -48.19105034638066, numeroRegistro: "MG 44898", RQE: "26736", cidade: "Araguari (MG)", telefone: "(34) 3844-0122", endereco: "Rua Rodolfo Paixão, 161 - 4 andar, Centro", img: "https://s3-sa-east-1.amazonaws.com/doctoralia.com.br/doctor/033a9b/033a9bc07f126d05043cca99269af26d_large.jpg"),
        
        
        InfosEspecialistasStruct(nome: "Dr. Raimundo Ribeiro Barradas", latitude: -5.085954376443819, longitude: -42.80521840610089, numeroRegistro: "PI 2281", RQE: "-", cidade: "Teresina (PI)", telefone: "(34) 3844-0122", endereco: "Rua álvaro mendes, 2345 (Centro-Sul)", img: "https://s3-sa-east-1.amazonaws.com/doctoralia.com.br/doctor/21fcea/21fceaeb5ff2fafba0f7ac2432a35964_large.jpg"),
    ]
    
    
    init() {
        _showingSheetEsp = State(initialValue: Array(repeating: false, count: infos.count))
    }
    
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    Color.blue.opacity(0.1).edgesIgnoringSafeArea(.all)
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
                }
                .frame(height: 200)
                
                VStack {
                    Image(systemName: "pill.fill")
                        .scaledToFit()
                        .font(.system(size: 65))
                        .offset(CGSize(width: 0, height: -50))
                    Text("Infectologistas Indicados")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(10)
                    
                    ScrollView {
                        ForEach(infos.indices, id: \.self) { index in
                            let info = infos[index]
                            
                            HStack {
                                AsyncImage(url: URL(string: info.img)) { image in
                                    image.resizable()
                                } placeholder: {
                                    Color.red
                                }
                                .frame(width: 90, height: 90)
                                .clipShape(.rect(cornerRadius: 25))
                                
                                Spacer()
                                
                                VStack {
                                    HStack {
                                        Text("\(info.nome) Número de registro: CRM \(info.numeroRegistro) RQE Nº: \(info.RQE)")
                                        
                                        Button {
                                            showingSheetEsp[index].toggle()
                                        } label: {
                                            Image(systemName: "location.fill")
                                        }
                                        .sheet(isPresented: $showingSheetEsp[index]) {
                                            InfosEspecialistas(
                                                lat: info.latitude,
                                                long: info.longitude,
                                                reg: info.endereco,
                                                nome: info.nome,
                                                cidade: info.cidade,
                                                telefone: info.telefone,
                                                img: info.img
                                            )
                                        }
                                        Spacer()
                                    }
                                }
                            }
                            Spacer()
                        }
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    Especialistas()
}

