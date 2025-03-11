import Foundation

class ViewFeedbacks: ObservableObject {
    @Published var jsonResponse: Any?
    public func fetchJSON(mensage:String) {
        let url = URL(string: "http://127.0.0.1:1880/postFedbacks")!
        print("valor base64: \(mensage)")
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let feedback = ["mensage": mensage] as [String : Any]
        request.httpBody = try? JSONSerialization.data(withJSONObject: feedback)
        
        URLSession.shared.dataTask(with: request) { data, _, _ in
            DispatchQueue.main.async {
                if let data = data {
                    self.jsonResponse = try? JSONSerialization.jsonObject(with: data)
                    
                }
            }
        }.resume()
    }
}
