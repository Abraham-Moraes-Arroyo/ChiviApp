//
// number2.swift
// Chivi
//
// Created by Abraham Morales Arroyo on 10/21/23.
// This is the map screen
import SwiftUI
import MapKit

// this is for the brown line stops
struct markerData:Identifiable{
  var id: Int
  let name:String
  let coordinate:CLLocationCoordinate2D
}
//    This is for the markers
    struct monumentData: Identifiable{
        var id: Int
        let name: String
        let coordinate: CLLocationCoordinate2D
    }

//this is for the blue line stops.
struct blue: Identifiable{
    var id: Int
    let name: String
    let coordinate: CLLocationCoordinate2D
}

//this is for the aftermath of the collected stops
struct stop: Identifiable{
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
    
    
// These are are for the blue line stops
    let Ohare = CLLocationCoordinate2D(latitude: 41.977665, longitude: -87.904223)
    let Rosemont = CLLocationCoordinate2D(latitude: 41.983507, longitude: -87.859388)
    let Cumberland = CLLocationCoordinate2D(latitude: 41.984246, longitude: -87.838028)
    let HarlemOhare = CLLocationCoordinate2D(latitude: 41.98227, longitude: -87.808656)
    let JeffersonPark = CLLocationCoordinate2D(latitude: 41.970634, longitude: -87.760892)
    let MontroseBlue = CLLocationCoordinate2D(latitude: 41.960672, longitude: -87.743574)
    let IrvingParkBlue = CLLocationCoordinate2D(latitude: 41.952925, longitude: -87.729229)
    let AddisonBlue = CLLocationCoordinate2D(latitude: 41.94738, longitude: -87.71906)
    let BelmontBlue = CLLocationCoordinate2D(latitude: 41.939751, longitude: -87.71906)
    let LoganSquareBlue = CLLocationCoordinate2D(latitude: 41.929728, longitude: -87.708541)
    let CaliforniaBlue = CLLocationCoordinate2D(latitude: 41.921939, longitude: -87.69689)
    let WesternBlue = CLLocationCoordinate2D(latitude: 41.916157, longitude: -87.687364)
    let DivisionBlue = CLLocationCoordinate2D(latitude: 41.903359, longitude: -87.666496)
    let ChicagoBlue = CLLocationCoordinate2D(latitude: 41.903359, longitude: -87.655214)
    let GrandBlue = CLLocationCoordinate2D(latitude: 41.891665, longitude: -87.647153)
    let ClarkLakeBlue = CLLocationCoordinate2D(latitude: 41.885737, longitude: -87.630886)
    let WashingtonBlue = CLLocationCoordinate2D(latitude: 41.883164, longitude: -87.626404)
    let MonroeBlue = CLLocationCoordinate2D(latitude: 41.880703, longitude: -87.629179)
    let JacksonBlue = CLLocationCoordinate2D(latitude: 41.878183, longitude: -87.629296)
    let LaSalleBlue = CLLocationCoordinate2D(latitude: 41.87692, longitude: -87.631722)
    let Clintonblue = CLLocationCoordinate2D(latitude: 41.875539, longitude: -87.641938)
    let UIC = CLLocationCoordinate2D(latitude: 41.875474, longitude: -87.647115)
    let Racine = CLLocationCoordinate2D(latitude: 41.87592, longitude: -87.657375)
    let IllinoisMedDis = CLLocationCoordinate2D(latitude: 41.875706, longitude: -87.67314)
    let WesternCongresBranch = CLLocationCoordinate2D(latitude: 41.87531, longitude: -87.686688)
    let KedzieHomanBlue = CLLocationCoordinate2D(latitude: 41.874341, longitude: -87.70604)
    let PulaskiBlue = CLLocationCoordinate2D(latitude: 41.873797, longitude: -87.725663)
    let CiceroBlue = CLLocationCoordinate2D(latitude: 41.87197, longitude: -87.744698)
    let AustinBlue = CLLocationCoordinate2D(latitude: 41.870851, longitude: -87.776812)
    let OakParkBlue = CLLocationCoordinate2D(latitude: 41.872108, longitude: -87.794471)
    let HarlemForestPark = CLLocationCoordinate2D(latitude: 41.87349, longitude: -87.793822)
    let ForestPark = CLLocationCoordinate2D(latitude: 41.873958, longitude: -87.794223)


// These are some of the monuments and paintings that the user can tap on and get directions to.
    
        let ChicagoriverWalk = CLLocationCoordinate2D(latitude: 41.887272, longitude: -87.627236)
        let PoloniaTriangle = CLLocationCoordinate2D(latitude: 41.903559, longitude: -87.667170)
        let IllinoisCentennialMon = CLLocationCoordinate2D(latitude: 41.928412, longitude: -87.707347)
        let LoganTheatre  = CLLocationCoordinate2D(latitude: 41.929826, longitude: -87.708847)
        let JeffersonThomasMemo = CLLocationCoordinate2D(latitude: 41.968397, longitude: -87.764121)
        let Picaso = CLLocationCoordinate2D(latitude: 41.883396, longitude: -87.629883)
        let EternalFlame = CLLocationCoordinate2D(latitude: 41.883955, longitude: -87.629853)
        let PioneerCourt = CLLocationCoordinate2D(latitude: 41.889663, longitude: -87.623005)
    
    
        let nicholasJ = CLLocationCoordinate2D(latitude: 41.889181, longitude: -87.618078)
        let FountainGreat = CLLocationCoordinate2D(latitude: 41.881719, longitude: -87.623746)
        let EagleFountain = CLLocationCoordinate2D(latitude: 41.876435, longitude: -87.623879)
        let eiththstreet = CLLocationCoordinate2D(latitude: 41.87188, longitude: -87.62332)
    
    
        let JosephFountain = CLLocationCoordinate2D(latitude: 41.86868, longitude: -87.62379)
        let fisherboy = CLLocationCoordinate2D(latitude: 41.87712, longitude: -87.61928)
    
        let cranegirl = CLLocationCoordinate2D(latitude: 41.87713, longitude: -87.61867)
    
    
    //    let HarlemForestPark = CLLocationCoordinate2D(latitude: 41.87349, longitude: -87.793822)
    //    let HarlemForestPark = CLLocationCoordinate2D(latitude: 41.87349, longitude: -87.793822)




    
    
  var body: some View {
      NavigationView{
          
          var stops = [
            markerData(id:0,name: "ChicagoriverWalk " , coordinate: ChicagoriverWalk),
            markerData(id:1,name: "Polonia Triangle" , coordinate: PoloniaTriangle),
            markerData(id:2, name: "Illinois Centennial Monnument", coordinate: IllinoisCentennialMon),
            markerData(id:3, name: "Logan Theather ", coordinate: LoganTheatre),
            markerData(id:4, name: "Picaso", coordinate: Picaso)


            
          ]
          
          
//          this is for the blue line trainstops
          var blues = [
              markerData(id:0,name: "Ohare Blue Line" , coordinate: Ohare),
            markerData(id:1,name: "Rosemont Blue Line", coordinate: Rosemont),
            markerData(id:2,name:"Cumberland Blue Line",coordinate: Cumberland),
            markerData(id:3,name:"Harlem Ohare Blue Line", coordinate: HarlemOhare),
            markerData(id:4, name:"JeffersonPark Blue Line", coordinate: JeffersonPark),
            markerData(id:5, name:"Montrose Blue Line",coordinate: MontroseBlue),
            markerData(id:6, name:"Irving Park Blue Line", coordinate: IrvingParkBlue),
            markerData(id:7,name:"Addison Blue Line", coordinate: AddisonBlue),
              markerData(id:8,name:"Belmont Blue Line",coordinate: BelmontBlue),
            markerData(id:9,name:"Logan Square Blue Line", coordinate: LoganSquareBlue),
            markerData(id:10,name:"California Blue Line", coordinate: CaliforniaBlue),
            markerData(id:11,name:"Western Blue Line", coordinate: WesternBlue),
            markerData(id:12, name:"Division Blue Line", coordinate: DivisionBlue),
              markerData(id:13, name:"Chicago Blue Line", coordinate: ChicagoBlue),
              markerData(id:14, name:"Grand Blue Line", coordinate: GrandBlue),
              markerData(id:15, name:"ClarkLake Blue Line", coordinate: ClarkLakeBlue),
              markerData(id:16, name:"Washington Blue Line", coordinate: WashingtonBlue),
              markerData(id:17, name:"Monroe Blue Line", coordinate: MonroeBlue),
              markerData(id:18, name:"Jackson Blue Line", coordinate: JacksonBlue),
              markerData(id:19, name:"LaSalle Blue  Line", coordinate: LaSalleBlue),
              markerData(id:20, name:"Clinton Blue Line", coordinate: Clintonblue),
              markerData(id:21, name:"UIC Blue Line", coordinate: UIC),
              markerData(id:22, name:"Racine Blue Line", coordinate: Racine),
              markerData(id:23, name:"Illinois Medical District Blue Line", coordinate: IllinoisMedDis),
              markerData(id:24, name:"Western (CongresBranch) Blue Line", coordinate: WesternCongresBranch),
              markerData(id:25, name:"KedzieHoman Blue Line", coordinate: KedzieHomanBlue),
              markerData(id:26, name:"Pulaski Blue Line", coordinate: PulaskiBlue),
              markerData(id:27, name:"Cicero Blue Line", coordinate: CiceroBlue),
              markerData(id:28, name:"Austin Blue Line", coordinate: AustinBlue),
              markerData(id:29, name:"OakPark Blue Line", coordinate: OakParkBlue),
              markerData(id:31, name:"Harlem ForestPark Blue Line", coordinate: HarlemForestPark),
              markerData(id:31, name:"ForestPark Blue Line", coordinate: ForestPark)
          ]
          
//          this is for the brown line trainstops
          
    var markers = [
        markerData(id:0,name: "Kimball Brown Line" , coordinate: Kimball),
      markerData(id:1,name: "Kedzie Brown Line", coordinate: Kedzie),
      markerData(id:2,name:"Francisco Brown Line",coordinate: Francisco),
      markerData(id:3,name:"Rockwell Brown Line", coordinate: Rockwell),
      markerData(id:4, name:"Western Brown Line", coordinate: Western),
      markerData(id:5, name:"Damen Brown Line",coordinate: Damen),
      markerData(id:6, name:"Montrose Brown Line", coordinate: Montrose),
      markerData(id:7,name:"IrvingPark Brown Line", coordinate: IrvingPark),
        markerData(id:8,name:"Addison Brown Line",coordinate: Addison),
      markerData(id:9,name:"Paulina Brown Line", coordinate: Paulina),
      markerData(id:10,name:"Southport Brown Line", coordinate: Southport),
      markerData(id:11,name:"Belmont Brown Line", coordinate: Belmont),
      markerData(id:12, name:"Wellington Brown Line", coordinate: Wellington),
        markerData(id:13, name:"Diversey Brown Line", coordinate: Diversey),
        markerData(id:14, name:"Fullerton Brown Line", coordinate: Fullerton),
        markerData(id:15, name:"Armitage Brown Line", coordinate: Armitage),
        markerData(id:16, name:"Chicago Brown Line", coordinate: Chicago),
        markerData(id:17, name:"MerchandiseMart Brown Line", coordinate: MerchandiseMart),
        markerData(id:18, name:"ClarkLake Brown Line", coordinate: ClarkLake),
        markerData(id:19, name:"WashingtonWells Brown Line", coordinate: WashingtonWells),
        markerData(id:20, name:"Quincy Brown Line", coordinate: Quincy),
        markerData(id:21, name:"LaSalleVanBuren Brown Line", coordinate: LaSalleVanBuren),
        markerData(id:22, name:"AdamsWabash Brown Line", coordinate: AdamsWabash),
        markerData(id:23, name:"MadisonWabash Brown Line", coordinate: MadisonWabash),
        markerData(id:24, name:"RandolphWabash Brown Line", coordinate: RandolphWabash)  ]

      
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
     
              ForEach(markers){ marker in
                  
                  //            this is for all of the brown line train stops
                  Annotation(marker.name, coordinate: marker.coordinate, anchor: .topLeading){
                      
                      Image(systemName: "figure.wave")
                          .padding(6)
                          .foregroundStyle(.white)
                          .background(.brown)
                          .clipShape(.capsule)
                          .onTapGesture {
                              print("Test")
                          }
                      //                this is where I am going to make the space act as a potential button when the user taps on it, it will make a screen pop up and have another button there that when tapped it will send the user to the address to that marker location
                      Text(" ").onTapGesture(perform: {
                          let url = URL(string: "maps://?saddr=&daddr=\(marker.name)") // The issue now is that it does make the directions work but the location is not the same one, i.e.) Quincy brown line stop is instead read as Quincy, which is some other place.
                          if UIApplication.shared.canOpenURL(url!) {
                              UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                          }})
                      
                  }
              }
              
//             this is for the blue line
              
              ForEach(blues){ blue in

                  //            this is for all of the brown line train stops
                  Annotation(blue.name, coordinate: blue.coordinate, anchor: .topLeading){

                      Image(systemName: "figure.wave")
                          .padding(6)
                          .foregroundStyle(.white)
                          .background(.blue)
                          .clipShape(.capsule)
                          .onTapGesture {
                              print("Test")
                          }
                      //                this is where I am going to make the space act as a potential button when the user taps on it, it will make a screen pop up and have another button there that when tapped it will send the user to the address to that marker location
                      Text(" ").onTapGesture(perform: {
                          let url = URL(string: "maps://?saddr=&daddr=\(blue.name)") // The issue now is that it does make the directions work but the location is not the same one, i.e.) Quincy brown line stop is instead read as Quincy, which is some other place.
                          if UIApplication.shared.canOpenURL(url!) {
                              UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                          }})
                      
                  }
              }
              ForEach(stops){ stop in

                  //            this is for the monuments that the user can click and actually see
                  Annotation(stop.name, coordinate: stop.coordinate, anchor: .topLeading){

                      Image(systemName: "figure.wave")
                          .padding(6)
                          .foregroundStyle(.white)
                          .background(.black)
                          .clipShape(.capsule)
                          .onTapGesture {
                              print("Test")
                          }
                      //                this is where I am going to make the space act as a potential button when the user taps on it, it will make a screen pop up and have another button there that when tapped it will send the user to the address to that marker location
                      Text(" ").onTapGesture(perform: {
                          let url = URL(string: "maps://?saddr=&daddr=\(stop.name)") // The issue now is that it does make the directions work but the location is not the same one, i.e.) Quincy brown line stop is instead read as Quincy, which is some other place.
                          if UIApplication.shared.canOpenURL(url!) {
                              UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                          }})
                      
                  }
              }
              
              

              ForEach(monuments){ monument in
                  
                  //           this is for all of the monuments
                  Annotation(monument.name, coordinate: monument.coordinate, anchor: .topLeading){
                      
                          Image(systemName: "figure.wave")
                              .padding(6)
                              .foregroundStyle(.white)
                              .background(.black)
                              .clipShape(.capsule)
                              .onTapGesture {
                                  print("Test")
                              }
                          //               this is where I am goign to have the text work as a navigation view to send the user to the screen that will have the name, photo and button that will send the user to apple maps where they can get the directions to that monument.
                          
                          
                      
                  }
              }
              
              
              
          }// end of navigation view
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
