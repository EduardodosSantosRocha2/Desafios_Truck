import SwiftUI
import WebKit

struct YouTubeView: UIViewRepresentable {
    let videoId: String
    func makeUIView(context: Context) ->  WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let demoURL = URL(string: "https://www.youtube.com/embed/\(videoId)") else { return }
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: demoURL))
    }
}

struct InfoView: View {
    @State var id = "9LhfL3Dg_lA"
    var body: some View {
        ZStack{
            VStack{
                VStack {
                    ZStack {
                        Color.azulCinza.edgesIgnoringSafeArea(.all)
                        Circle()
                            .foregroundColor(.white)
                            .frame(width: 210, height: 210)
                            .offset(CGSize(width: 0, height: 120.0))
                    }
                    .frame(height: 200)
                }
                Spacer()
                YouTubeView(videoId: id)
                    .cornerRadius(15)
                    .frame(width: 350, height: 250)
                    .padding()
                Spacer()
                
            }
            }
    }
}

#Preview {
    InfoView()
}
