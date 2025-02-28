import SwiftUI

struct Especialistas: View {
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
                    
     
                    
                    
                        HStack{
                            AsyncImage(url: URL(string: "https://s3-sa-east-1.amazonaws.com/doctoralia.com.br/doctor/99d2be/99d2be7dfe44d3faa563ade0bba163ad_220_square.jpg")) { image in
                                image.resizable()
                            } placeholder: {
                                Color.red
                            }
                            .frame(width: 90, height: 90)
                            .clipShape(.rect(cornerRadius: 25))
                            
                            Spacer()
                            
                            VStack{
                                HStack{
                                    Text("Dra. Bianca Eliza Hoekstra Número de registro: CRM PR 36825 RQE Nº: 29788")
                                    AsyncImage(url: URL(string: "https://icones.pro/wp-content/uploads/2021/02/icone-de-broche-de-localisation-grise.png")) { image in
                                        image.resizable()
                                    } placeholder: {
                                        Color.red
                                    }
                                    .frame(width: 20, height: 20)
                                    .clipShape(.rect(cornerRadius: 25))
                                }
                           
                            }
                            
                        }
                   
                    Spacer()
                    
                    
                    HStack{
                        AsyncImage(url: URL(string: "https://s3-sa-east-1.amazonaws.com/doctoralia.com.br/doctor/333454/3334549e3d570357e3da9f394f5c2ab2_large.jpg")) { image in
                            image.resizable()
                        } placeholder: {
                            Color.red
                        }
                        .frame(width: 90, height: 90)
                        .clipShape(.rect(cornerRadius: 25))
                        
                        Spacer()
                        
                        VStack{
                            HStack{
                                Text("Dr. Alexandre Blikstad Mauro Número de registro: CRM SP 161803 RQE 68772")
                                AsyncImage(url: URL(string: "https://icones.pro/wp-content/uploads/2021/02/icone-de-broche-de-localisation-grise.png")) { image in
                                    image.resizable()
                                } placeholder: {
                                    Color.red
                                }
                                .frame(width: 20, height: 20)
                                .clipShape(.rect(cornerRadius: 25))
                            }
                       
                        }
                        
                    }
                    
                    Spacer()
                    
                    HStack{
                        AsyncImage(url: URL(string: "https://s3-sa-east-1.amazonaws.com/doctoralia.com.br/doctor/2741e7/2741e77595a766f854cd171843d6e2ca_220_square.jpg")) { image in
                            image.resizable()
                        } placeholder: {
                            Color.red
                        }
                        .frame(width: 90, height: 90)
                        .clipShape(.rect(cornerRadius: 25))
                        
                        Spacer()
                        
                        VStack{
                            HStack{
                                Text("Dra. Valeria de Morais Silveira Telles Número de registro: CRM SP 161803 RQE 68772")
                                AsyncImage(url: URL(string: "https://icones.pro/wp-content/uploads/2021/02/icone-de-broche-de-localisation-grise.png")) { image in
                                    image.resizable()
                                } placeholder: {
                                    Color.red
                                }
                                .frame(width: 20, height: 20)
                                .clipShape(.rect(cornerRadius: 25))
                            }
                       
                        }
                        
                    }
                    
                    Spacer()
                    
                    HStack{
                        AsyncImage(url: URL(string: "https://s3-sa-east-1.amazonaws.com/doctoralia.com.br/doctor/1befc7/1befc7dd9be86a29c45c6774be387e2c_220_square.jpg")) { image in
                            image.resizable()
                        } placeholder: {
                            Color.red
                        }
                        .frame(width: 90, height: 90)
                        .clipShape(.rect(cornerRadius: 25))
                        
                        Spacer()
                        
                        VStack{
                            HStack{
                                Text("Dr. Roger Lopes Batista Número de registro: CRM MG 77747 - RQE Nº: 61580 Infectologia")
                                AsyncImage(url: URL(string: "https://icones.pro/wp-content/uploads/2021/02/icone-de-broche-de-localisation-grise.png")) { image in
                                    image.resizable()
                                } placeholder: {
                                    Color.red
                                }
                                .frame(width: 20, height: 20)
                                .clipShape(.rect(cornerRadius: 25))
                            }
                       
                        }
                        
                    }
                   
                }.padding()
            }//vstack
        }
    }
}

#Preview {
    Especialistas()
}
