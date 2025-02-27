import SwiftUI
import PhotosUI

struct ContentView: View {
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: UIImage?
    @State private var base64: String = ""
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        
        VStack {
            
            
            if let avatarImage = avatarImage {
                Image(uiImage: avatarImage)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 200)
            } else {
          
                Circle()
                    .fill(Color.gray.opacity(0.3))
                    .scaledToFit()
                    .frame(width: 300, height: 200)
            }
            
            PhotosPicker("Selecione a Imagem", selection: $avatarItem, matching: .images)
                .accentColor(.white)
                .padding()
                .background(Color.azulGrafite)
                .cornerRadius(10)
            
            VStack {
                if let jsonResponse = viewModel.jsonResponse {
                    if let jsondict = jsonResponse as? [String:Any]{
                        Text("A celulula é \(String(describing: jsondict["predict"] ?? "")).").padding()
                    }
                }
            } .padding()
              .frame(width: 350, height: 230)
              .background(.respostaGrafite)
              .cornerRadius(20)
              
             
        
        }
        .padding()
        .onChange(of: avatarItem) {
            
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
    }
}

#Preview {
    ContentView()
}

