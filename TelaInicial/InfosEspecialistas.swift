import SwiftUI
import MapKit




// Representa uma localização no mapa
struct Location1: Identifiable, Hashable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
    let region: String
    let range: Double
    let zoomLevel: Double
    
    static func == (lhs: Location1, rhs: Location1) -> Bool {
        return lhs.id == rhs.id &&
           lhs.coordinate.latitude == rhs.coordinate.latitude &&
           lhs.coordinate.longitude == rhs.coordinate.longitude &&
           lhs.region == rhs.region
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(coordinate.latitude)
        hasher.combine(coordinate.longitude)
        hasher.combine(region)
    }
}

struct InfosEspecialistas: View {
    
    @State var lat = -3.1187
    @State var long = -60.0289
    @State var reg = ""
    @State var ran = 10
    @State var zoom = 0.01
    @State var nome = ""
    @State var cidade = ""
    @State var telefone = ""
    @State var img = ""
    
    
    // Define a região inicial do mapa
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 12.8267, longitude: -7.9218),
        span: MKCoordinateSpan(latitudeDelta: 100, longitudeDelta: 100)
    )
    
    @State private var selectedLocationIndex = 0
    private let sourceURL = "https://en.wikipedia.org/wiki/Malaria_Atlas_Project"
    
    
    
    // Lista de locais afetados
    
    
    var body: some View {
        let locations = [
            Location1(coordinate: CLLocationCoordinate2D(latitude: lat, longitude: long), region: reg, range: Double(ran), zoomLevel: Double(zoom)),

        ]
        ZStack {
            Color.white.ignoresSafeArea()
            VStack {
                VStack {
                    ZStack {
                        Color.azulCinza.edgesIgnoringSafeArea(.all)
                        
                        Text("ProtozoAIro")
                            .font(.system(size: 34, weight: .regular, design: .monospaced))
                            .font(.title)
                            .bold()
                            .padding()
                            .offset(y: -50)
                        
                        Circle()
                            .foregroundColor(.white)
                            .frame(width: 210, height: 210)
                            .offset(y: 120)
                    }
                    .frame(height: 200)
                    
                    
                    
                    AsyncImage(url: URL(string: img)) { image in
                        image.resizable()
                    } placeholder: {
                        Color.red
                    }
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 200, height: 200)
                    .font(.system(size: 65))
                    .offset(CGSize(width: 0, height: -90))
                    
                
                    
      
                }
                
                
                
                Text("\(nome)\nCidade: \(cidade)\nTelefone: \(telefone)")
                    .font(.system(size: 20, weight: .regular, design: .monospaced))
                    .font(.title3)
                    .padding()
                    .offset(CGSize(width: 0, height: -90))
                
                Spacer()
                
                // Exibe o mapa
                MapViewWithCircles1(region: $region, locations: locations)
                    .cornerRadius(20)
                    .shadow(radius: 5)
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(CGSize(width: 0, height: -60))
                
            }
            
            // Botão para reiniciar visão global
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        region = MKCoordinateRegion(
                            center: CLLocationCoordinate2D(latitude: -15.8267, longitude: -47.9218),
                            span: MKCoordinateSpan(latitudeDelta: 100, longitudeDelta: 100)
                        )
                    }) {
                        Image(systemName: "globe")
                            .font(.title)
                            .padding()
                            .background(Circle().fill(Color.white))
                            .shadow(radius: 3)
                    }
                    .padding()
                }.offset(CGSize(width: 0, height: -40))
            }
        }
        .onAppear {
            // Inicializa com a primeira localização
            let initialLocation = locations[selectedLocationIndex]
            region = MKCoordinateRegion(
                center: initialLocation.coordinate,
                span: MKCoordinateSpan(latitudeDelta: initialLocation.zoomLevel, longitudeDelta: initialLocation.zoomLevel)
            )
        }
    }
}

struct MapViewWithCircles1: UIViewRepresentable {
    @Binding var region: MKCoordinateRegion
    let locations: [Location1]
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        return mapView
    }
    
    func updateUIView(_ mapView: MKMapView, context: Context) {
        // Atualiza a região do mapa
        mapView.setRegion(region, animated: true)
        
        // Remove elementos anteriores
        mapView.removeOverlays(mapView.overlays)
        mapView.removeAnnotations(mapView.annotations)
        
        // Adiciona novos marcadores e círculos
        for location in locations {
            let annotation = MKPointAnnotation()
            annotation.coordinate = location.coordinate
            annotation.title = location.region
            mapView.addAnnotation(annotation)
            
            let circle = MKCircle(center: location.coordinate, radius: location.range * 1000)
            mapView.addOverlay(circle)
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: MapViewWithCircles1
        
        init(_ parent: MapViewWithCircles1) {
            self.parent = parent
        }
        
        // Personaliza o marcador
        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
            if annotation is MKUserLocation { return nil }
            
            let identifier = "locationPin"
            var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
            
            if annotationView == nil {
                annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                annotationView?.canShowCallout = true
            } else {
                annotationView?.annotation = annotation
            }
            
            return annotationView
        }
        
        // Personaliza o círculo
        func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
            if let circleOverlay = overlay as? MKCircle {
                let renderer = MKCircleRenderer(circle: circleOverlay)
                renderer.fillColor = UIColor.blue.withAlphaComponent(0.2)
                renderer.strokeColor = UIColor.blue
                renderer.lineWidth = 2
                return renderer
            }
            return MKOverlayRenderer(overlay: overlay)
        }
        
        // Atualiza a região ao mover o mapa
        func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
            DispatchQueue.main.async {
                self.parent.region = mapView.region
            }
        }
    }
}
#Preview {    
    InfosEspecialistas(lat:0, long:0, reg:"", nome:"",cidade: "", telefone:"", img:"")
}
