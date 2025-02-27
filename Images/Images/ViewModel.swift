import Foundation

class ViewModel: ObservableObject {
    @Published var jsonResponse: Any?


    public func fetchJSON(base64:String) {
        let url = URL(string: "https://protozoairoapi.up.railway.app/predict")!
        print("valor base64: \(base64)")
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let parametros = ["image": base64] as [String : Any]
        request.httpBody = try? JSONSerialization.data(withJSONObject: parametros)
        
        URLSession.shared.dataTask(with: request) { data, _, _ in
            DispatchQueue.main.async {
                if let data = data {
                    self.jsonResponse = try? JSONSerialization.jsonObject(with: data)
                    
                   
//                    print(base64)
                }
            }
        }.resume()
    }
}
