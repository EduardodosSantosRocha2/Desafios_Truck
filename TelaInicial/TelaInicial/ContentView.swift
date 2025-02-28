import SwiftUI

struct ContentView: View {
    var body: some View {
        
       
        TabView{
            InicioView()
                .tabItem{Label("", systemImage: "line.3.horizontal")}
            AnaliseView()
                .tabItem {Label( "", systemImage: "brain.filled.head.profile" )}
            FeedBackView()
                .tabItem { Label("", systemImage: "checkmark.shield.fill")}
            LocalizaView()
                .tabItem { Label("", systemImage: "mappin.and.ellipse")}
            InfoView()
                .tabItem{Label("", systemImage: "info.circle.fill")}
        }//tabview
        
    }
}

#Preview {
    ContentView()
}
