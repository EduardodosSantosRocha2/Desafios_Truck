import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
           
      
            
            NavigationStack{
                NavigationLink(destination: personagens()) {
                                Image("valorant")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 200.0, height: 200.0)
                                }
                         
            }
            
    }
            
            
        
        
        
    }


#Preview {
    ContentView()
}
