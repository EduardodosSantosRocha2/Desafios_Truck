import SwiftUI
import PhotosUI

struct AnaliseView: View {
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: UIImage?
    @State private var base64: String = ""
    @StateObject var viewModel = ViewModel()
    
    var body: some View{
        ScrollView {
            ZStack{
                Color.azulCinza
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 210, height: 210)
                    .offset(CGSize(width: 0, height: 120.0))
                if let avatarImage = avatarImage {
                    Image(uiImage: avatarImage)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 250, height: 250)
                        .offset(CGSize(width: 0, height: 120.0))
                } else {
                    Circle()
                        .fill(Color.gray.opacity(0.3))
                        .scaledToFit()
                        .frame(width: 190, height: 190)
                        .offset(CGSize(width: 0, height: 120.0))
                }
            }
            
            .frame(height: 200)
            
            
            
            VStack {
                Spacer().frame(height: 150)
                
                PhotosPicker("Selecione a Imagem", selection: $avatarItem, matching: .images)
                    .accentColor(.white)
                    .padding()
                    .background(Color.azulCinza)
                    .cornerRadius(10)
                
                VStack {
                    if let jsonResponse = viewModel.jsonResponse {
                        if let jsondict = jsonResponse as? [String:Any]{
                            Text("A celulula é \(String(describing: jsondict["predict"] ?? "")).").padding()
                        }
                    }
                } .padding()
                    .frame(width: 350, height: 230)
                    .background(.azulCinza)
                    .cornerRadius(20)
                
                VStack{}.frame(height: 50)
            }
            .onChange(of: avatarItem){
                Task {
                    if let data = try? await avatarItem?.loadTransferable(type: Data.self) {
                        if let uiImage = UIImage(data: data){
                            avatarImage = uiImage
                            base64 = data.base64EncodedString()
                            viewModel.fetchJSON(base64: base64)
                        }
                        
                    } else {
                        print("Falha ao carregar a imagem")
                    }
                }
            }
            Spacer()
        }
        .ignoresSafeArea()
    }
}



#Preview {
    AnaliseView()
}
