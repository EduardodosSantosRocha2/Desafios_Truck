import SwiftUI

struct FeedBackView: View {
    @State private var userOpinion: String = ""
    @State private var showMessageSentAlert = false // Estado para exibir o pop-up
    @StateObject var viewModelFeedback = ViewModelFeedbacks()
    var body: some View {
        VStack {
         
            VStack {
                Text("ProtozoAIro")
                    .font(.custom("PixelatedFont", size: 25))
                    .padding()
            }
            .frame(maxWidth: .infinity)
            .background(Color.azulCinza)

            ScrollView {
                VStack(alignment: .leading, spacing: 8) {
                    Text("🦠🔬 Desempenho do Modelo na Classificação de Malária 🚀📊")
                        .font(.headline)

                    Text("O modelo foi treinado com **19.192 imagens**, sendo 9.598 células saudáveis 🟢 e 9.598 células infectadas 🦠. Após o treinamento, atingiu **98,18% de acurácia** 🎯.")
                    
                    Text("✅ **Métricas de Avaliação:**")
                    Text("✔️ Precisão (Precision): **96%** para células saudáveis 🟢 e **95%** para infectadas 🦠")
                    Text("✔️ Revocação (Recall): **98%** para saudáveis 🟢 e **91%** para infectadas 🦠")
                    Text("✔️ F1-Score: **96%** para ambas as classes 📈")

                    Text("📊 **Classificação das Amostras no Teste:**")
                    Text("📌 **Células Saudáveis**: 4.091 imagens 📷")
                    Text("📌 **Células Infectadas**: 4.134 imagens 🦠")

                    Text("📋 **Resumo do Desempenho:**")
                    Text("🎯 **Acurácia Geral:** 98,18%")
                    Text("📊 **Média Ponderada (Weighted Avg):** **96%** em todas as métricas")

                    Text("🚀 Com essa taxa de precisão, o modelo se torna uma ferramenta eficaz no diagnóstico da malária. 💙💜")
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(12)
                .padding()
            }

            HStack {
                TextField("Digite sua opinião:", text: $userOpinion)
                    .padding()
                    .background(Color.azulCinza)
                    .foregroundColor(.white)
                    .cornerRadius(10)

                Button(action: enviarMensagem) {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .padding(.trailing, 6)
                   
                }
            }
            .padding()
            .alert("Mensagem Enviada!", isPresented: $showMessageSentAlert) {
                Button("OK", role: .cancel) {}
            }

        }
    }
    
   
    func enviarMensagem() {
        
        if !userOpinion.isEmpty {
            print("Mensagem enviada: \(userOpinion)")
            viewModelFeedback.fetchJSON(mensage: userOpinion)
            showMessageSentAlert = true
            
        }
        userOpinion = ""
    }
}

#Preview {
    FeedBackView()
}
