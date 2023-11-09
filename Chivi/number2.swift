//
// number2.swift
// Chivi
//
// Created by Abraham Morales Arroyo on 10/21/23.
// This is the map screen
import SwiftUI
import MapKit
struct markerData:Identifiable{
  var id: Int
  let name:String
  let coordinate:CLLocationCoordinate2D
//  let colors:MKMarkerAnnotationView
    
    
//     you are going to have to make another variable that is going to be for the image
//    let images: Image
    

    
    
}
//    what if I create a whole different funciton where I can plot markers too?
    struct monumentData: Identifiable{
        var id: Int
        let name: String
        let coordinate: CLLocationCoordinate2D
    }
struct number2: View {
    
  @State private var cameraPosition: MapCameraPosition = .region(.userRegion)
    
//    these are going to be the first monuments in brown line
    let happen = CLLocationCoordinate2D(latitude: 41.961139945467245, longitude:  -87.70656561801727) //41.961139945467245, -87.70656561801727
    let berlin = CLLocationCoordinate2D(latitude: 41.96620571165592, longitude: -87.6887502376584) //41.96620571165592, -87.6887502376584

//    Dandelion Therapeutic Art Center
    let dand = CLLocationCoordinate2D(latitude: 41.96503626788776, longitude:  -87.67353735316699) //41.96503626788776, -87.67353735316699
    
    let bojit = CLLocationCoordinate2D(latitude: 41.950252781667736, longitude:  -87.67337913154171)
//    41.950252781667736, -87.67337913154171
    
//    Urbs in Horto Mural
    let urbs = CLLocationCoordinate2D(latitude: 41.948371534100325, longitude:  -87.6640549196103) //41.948371534100325, -87.6640549196103
//    Malosa Gallery
    let malosa = CLLocationCoordinate2D(latitude: 41.94498680470532, longitude:  -87.672111284681) //41.94498680470532, -87.672111284681
    
    
//    Eagle Column
    let eagle = CLLocationCoordinate2D(latitude: 41.928872279039375, longitude:  -87.65391445082314) //41.928872279039375, -87.65391445082314
//Depaul ArtMuseum
    let dep = CLLocationCoordinate2D(latitude: 41.92526569191992, longitude: -87.6525453851119) //41.92526569191992, -87.6525453851119
    
//    richard Norton Gallary
//    41.88840773359487, -87.6354620425653
    let rich = CLLocationCoordinate2D(latitude: 41.88840773359487, longitude: -87.6354620425653)
    
// Monument with Standing Beast
    let stand = CLLocationCoordinate2D(latitude: 41.88840773359487, longitude: -87.6354620425653)
    
//  these are going to be the brown line train stops
  let Kimball = CLLocationCoordinate2D(latitude: 41.967354, longitude: -87.713310)
  let Kedzie = CLLocationCoordinate2D(latitude: 41.966046, longitude: -87.713709)
  let Francisco = CLLocationCoordinate2D(latitude: 41.966724, longitude: -87.701308)
  let Rockwell = CLLocationCoordinate2D(latitude: 41.966724, longitude: -87.701308)
  let Western = CLLocationCoordinate2D(latitude: 41.966365, longitude: -87.688280)
  let Damen = CLLocationCoordinate2D(latitude: 41.966748, longitude: -87.678224)
  let Montrose = CLLocationCoordinate2D(latitude: 41.961756, longitude: -87.675677)
  let IrvingPark = CLLocationCoordinate2D(latitude: 41.954521, longitude: -87.674190)
  let Addison = CLLocationCoordinate2D(latitude: 41.947620, longitude: -87.653666)
  let Paulina = CLLocationCoordinate2D(latitude: 41.943623, longitude: -87.670983)
  let Southport = CLLocationCoordinate2D(latitude: 41.943578, longitude: -87.664748)
  let Belmont = CLLocationCoordinate2D(latitude: 41.939751, longitude: -87.653738)
  let Wellington = CLLocationCoordinate2D(latitude: 41.936682, longitude: -87.653360)
  let Diversey = CLLocationCoordinate2D(latitude: 41.932731, longitude: -87.653694)
  let Fullerton = CLLocationCoordinate2D(latitude: 41.925645, longitude: -87.652345)
  let Armitage = CLLocationCoordinate2D(latitude: 41.918110, longitude: -87.652977)
  let Sedgwick = CLLocationCoordinate2D(latitude: 41.910481, longitude: -87.638840)
    let Chicago = CLLocationCoordinate2D(latitude: 41.896546, longitude: -87.634198)
  let MerchandiseMart = CLLocationCoordinate2D(latitude: 41.888328, longitude: -87.635907)
  let ClarkLake = CLLocationCoordinate2D(latitude: 41.885737, longitude: -87.630824)
  let WashingtonWells = CLLocationCoordinate2D(latitude: 41.883765, longitude: -87.633979)
  let Quincy = CLLocationCoordinate2D(latitude: 41.878723, longitude: -87.633591)
  let LaSalleVanBuren = CLLocationCoordinate2D(latitude: 41.876629, longitude: -87.631440)
  let HaroldWashingtonLibraryStateVanBuren = CLLocationCoordinate2D(latitude: 41.876921, longitude: -87.628358)
  let AdamsWabash = CLLocationCoordinate2D(latitude: 41.879507, longitude: -87.626726)
  let MadisonWabash = CLLocationCoordinate2D(latitude: 41.882089, longitude: -87.626118)
  let RandolphWabash = CLLocationCoordinate2D(latitude: 41.884659, longitude: -87.625402)
  var body: some View {
    var markers = [
        markerData(id:0,name: "Kimball" , coordinate: Kimball),
      markerData(id:1,name: "Kedzie", coordinate: Kedzie),
      markerData(id:2,name:"Francisco",coordinate: Francisco),
      markerData(id:3,name:"Rockwell", coordinate: Rockwell),
      markerData(id:4, name:"Western", coordinate: Western),
      markerData(id:5, name:"Damen",coordinate: Damen),
      markerData(id:6, name:"Montrose", coordinate: Montrose),
      markerData(id:7,name:"IrvingPark", coordinate: IrvingPark),
        markerData(id:8,name:"Addison",coordinate: Addison),
      markerData(id:9,name:"Paulina", coordinate: Paulina),
      markerData(id:10,name:"Southport", coordinate: Southport),
      markerData(id:11,name:"Belmont", coordinate: Belmont),
      markerData(id:12, name:"Wellington", coordinate: Wellington),
        markerData(id:13, name:"Diversey", coordinate: Diversey),
        markerData(id:14, name:"Fullerton", coordinate: Fullerton),
        markerData(id:15, name:"Armitage", coordinate: Armitage),
        markerData(id:16, name:"Chicago", coordinate: Chicago),
        markerData(id:17, name:"MerchandiseMart", coordinate: MerchandiseMart),
        markerData(id:18, name:"ClarkLake", coordinate: ClarkLake),
        markerData(id:19, name:"WashingtonWells", coordinate: WashingtonWells),
        markerData(id:20, name:"Quincy", coordinate: Quincy),
        markerData(id:21, name:"LaSalleVanBuren", coordinate: LaSalleVanBuren),
        markerData(id:22, name:"AdamsWabash", coordinate: AdamsWabash),
        markerData(id:23, name:"MadisonWabash", coordinate: MadisonWabash),
        markerData(id:24, name:"RandolphWabash", coordinate: RandolphWabash)  ]
//      have it have an image and in that image to have ontap gesture to send the user to an apple maps direction.
      
//      this is for the monuments that are around the brown line
      var monuments = [
        monumentData(id:0,name: "Happen Space Gallary" , coordinate: happen),
        monumentData(id:1,name: "Berlin Wall" , coordinate: berlin),
        monumentData(id:2,name: "Dandelion Therapeutic Art Center" , coordinate: dand),
        monumentData(id:3,name: "Bojit Studdio" , coordinate: bojit),
        monumentData(id:4,name: "Urbs in Horto Mural" , coordinate: urbs),
        monumentData(id:2,name: "Malosa Gallery" , coordinate: malosa),
        monumentData(id:2,name: "Eagle Column" , coordinate: eagle),
        monumentData(id:2,name: "DePaul Art Museum" , coordinate: dep),
        monumentData(id:2,name: "Richard Norton Gallary" , coordinate: rich),
      ]
      
      
    Map(position: $cameraPosition) {
      //For Each Loop...
      //2 plan:
      //1 - load markers onto page
      //2 - make
      ForEach(markers){ marker in
          Marker(marker.name, coordinate: marker.coordinate)
               .tint(.brown)

          
          
      }
        ForEach(monuments){ monument in
            Marker(monument.name, coordinate: monument.coordinate)
        }.tint(.black)
//            .onTapGesture(count: 0, perform:
//                            let url = URL(string: "maps://?saddr=&daddr=\(monument.coordinate.latitude),\(monument.coordinate.longitude)")
//
//                            if UIApplication.shared.canOpenURL(url!) {
//                UIApplication.shared.open(url!, options: [:], completionHandler: nil)
//            };)
        
//Here is where I am planning to add the .ontapgesture feature where
    
       //http:applemaps/directions/\(coordinate)
       

//these are the marks for the murals in Brown Line
//        Marker("Happen Space Gallary", systemImage: "building", coordinate: happen).tint(.black)
//        Marker("Berlin Wall", systemImage: "building", coordinate: berlin).tint(.black)
//        Marker("Dandelion Therapeutic Art Center", systemImage: "building", coordinate: dand).tint(.black)
//        Marker("Bojit Studdio", systemImage: "building", coordinate: bojit).tint(.black)
//        Marker("Urbs in Horto Mural", systemImage: "building", coordinate: urbs).tint(.black)
//        Marker("Malosa Gallery", systemImage: "building", coordinate: malosa).tint(.black)
//        Marker("Eagle Column", systemImage: "building", coordinate: eagle).tint(.black)
//        Marker("DePaul Art Museum", systemImage: "building", coordinate: dep).tint(.black)
//        Marker("Richard Norton Gallary", systemImage: "building", coordinate: rich).tint(.black)
    }
  }
}
extension CLLocationCoordinate2D{
  static var userLocation: CLLocationCoordinate2D {
//      find a way to have this fixed to the user location
    return .init(latitude: 41.879507, longitude: -87.626726)
  }
}
extension MKCoordinateRegion {
  static var userRegion: MKCoordinateRegion {
    return .init(center: .userLocation,
    latitudinalMeters: 7000,
    longitudinalMeters: 7000)
  }
}
#Preview {
  number2()
}
