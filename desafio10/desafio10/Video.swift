//
//  Video.swift
//  desafio10
//
//  Created by Turma01-9 on 18/02/25.
//

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

struct Video: View {
    @State var id = ""
    var body: some View {
        ZStack{
            Color.bluedark.ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
            YouTubeView(videoId: id)
                .frame(width: 300, height: 200)
                .padding()
                    
                    
                
            }
        }
    }
}

#Preview {
    Video(id:"")
}
