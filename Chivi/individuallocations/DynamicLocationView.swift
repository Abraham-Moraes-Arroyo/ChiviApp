
import SwiftUI
import MapKit
struct DynamicLocationView: View {
//  41.852652, -87.632226
  var individualDestination:Destination
  var body: some View {
    let tower = CLLocationCoordinate2D(
      latitude: individualDestination.latitude,
    longitude: individualDestination.longitude)
      ScrollView{
        VStack{
          Map(){
            Marker (individualDestination.name, systemImage: "pin", coordinate:
            tower)
            .tint (.red)
          }
            .frame(height: 350)
          Image(individualDestination.image)
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay {
              Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 9)
            .offset(y: -300)
            .padding(.bottom, -130)
            .frame(height:400)
          VStack(alignment: .leading) {
            Text(individualDestination.name)
              .font(.title)
            HStack {
              Text(individualDestination.directions)
              Spacer()
            }
            .font(.subheadline)
            .foregroundStyle(.secondary)
            Divider()
            Text("About ")
              .font(.title2)
//  https://www.chicagochinatown.org/chinatown-landmark#&gid=1544418331&pid=1
            Text(individualDestination.description)
            Text("")
            Button("Go", action:{
              let latitude = individualDestination.latitude
              let longitude = (individualDestination.longitude)
              let url = URL(string: "maps://?saddr=&daddr=\(latitude),\(longitude)")
              if UIApplication.shared.canOpenURL(url!) {
                UIApplication.shared.open(url!, options: [:], completionHandler: nil)
              }
            }).foregroundColor(.green)
              .font(.title)
          }
          .offset(y:-340)
          .padding()
        }
      }
    }
  }
#Preview {
  DynamicLocationView(individualDestination: Destination(name: "Chinatown Gate", description: "The four large Chinese characters near the top of the gate translate into ‘the world belongs to the commonwealth’, which was a famous saying in the early part of the 1900's and reflects the spirit and determination of the Chinese people.", image: "chinatownmid", longitude: 41.852652, latitude: -87.632226, directions: "2206 S Wentworth Ave, Chicago, IL 60616"))
}
