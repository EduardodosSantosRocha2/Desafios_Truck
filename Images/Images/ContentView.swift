import SwiftUI
import PhotosUI

struct ContentView: View {
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: UIImage?
    @State private var base64: String = ""
    
    var body: some View {
        
        VStack {
            PhotosPicker("Selecione a Imagem", selection: $avatarItem, matching: .images)
                .accentColor(.white)
                .padding()
                .background(Color.gray)
                .cornerRadius(10)
            
            if let avatarImage = avatarImage {
                Image(uiImage: avatarImage)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 200)
            } else {
          
                Circle()
                    .fill(Color.gray.opacity(0.3))
                    .frame(width: 300, height: 200)
            }
        
        }
        .padding()
        .onChange(of: avatarItem) {
            
            Task {
                if let data = try? await avatarItem?.loadTransferable(type: Data.self) {
                    if let uiImage = UIImage(data: data){
                        avatarImage = uiImage
                        base64 = data.base64EncodedString()
                        print("\(base64)")
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

