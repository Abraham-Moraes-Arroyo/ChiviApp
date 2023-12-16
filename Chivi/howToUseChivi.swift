//
//  howToUseChivi.swift
//  Chivi
//
//  Created by student on 12/15/23.
//

import SwiftUI

struct howToUseChivi: View {
    var body: some View {
        ScrollView{
            VStack(alignment:.center){
                Image("chivi")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 300, height: 200, alignment: .center)
                Text("How To use Chivi")
                    .minimumScaleFactor(0.1)
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color(red: 0.6, green: 0.4, blue: 1))
                    .cornerRadius(15)
                Image("howtoChivi1")
                    .renderingMode(.original)
                    .resizable()
                    .cornerRadius(25)
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 250, height:400, alignment: .center)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                            .frame(width: 280, height: 350)
                    )
                
                Text("Begin by going to the second tab of the screen where it is labeled: Tours.")
                    .minimumScaleFactor(0.1)
                    .font(.system(size: 15, design: .default))
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color(red: 0.6, green: 0.4, blue: 1))
                    .cornerRadius(15)
                //                    .frame(maxWidth:300)
                //                    .frame(minWidth:100)
                //                    .frame(width:300, height: 100, alignment: .center)
                
                Image("howto2")
                    
                    .renderingMode(.original)
                    .resizable()
                    .cornerRadius(25)
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 280, height:260, alignment: .center)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                            .frame(width: 310, height: 240, alignment: .center)
                    )
                
                Text("Here is where all the tours are going to be located. Feel free to pick any, but for this example we have chosen this one.")
                    .minimumScaleFactor(0.1)
                    .foregroundColor(.white)
                    .font(.system(size: 15, design: .default))
                    .padding(10)
                    .background(Color(red: 0.6, green: 0.4, blue: 1))
                    .cornerRadius(15)
                
                Image("howto3")
                    
                    .renderingMode(.original)
                    .resizable()
                    .cornerRadius(25)
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 280, height:260, alignment: .center)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                            .frame(width: 310, height: 240, alignment: .center)
                    )
                
                Text("Feel free to favorite any of the locations that you wish to visit later or that you enjoyed visiting. ")
                    .minimumScaleFactor(0.1)
                    .foregroundColor(.white)
                    .font(.system(size: 15, design: .default))
                    .padding(10)
                    .background(Color(red: 0.6, green: 0.4, blue: 1))
                    .cornerRadius(15)
                
                Image("howto4")
                    
                    .renderingMode(.original)
                    .resizable()
                    .cornerRadius(25)
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 280, height:260, alignment: .center)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                            .frame(width: 310, height: 240, alignment: .center)
                    )
                
                Text("To see your favorites you need to tap on the switch labeled 'Favorites'. Nest lets see one of our favorite items and tap on it.")
                    .minimumScaleFactor(0.1)
                    .foregroundColor(.white)
                    .font(.system(size: 15, design: .default))
                    .padding(10)
                    .background(Color(red: 0.6, green: 0.4, blue: 1))
                    .cornerRadius(15)
                
                Image("howto5")
                    
                    .renderingMode(.original)
                    .resizable()
                    .cornerRadius(25)
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 280, height:260, alignment: .center)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                            .frame(width: 310, height: 240, alignment: .center)
                    )
                
                Text("Here we have the address of the location, a map to get an understanding of what surrounds the location and a button to take us there. Lets tap on the button to take us to the location. ")
                    .minimumScaleFactor(0.1)
                    .foregroundColor(.white)
                    .font(.system(size: 15, design: .default))
                    .padding(10)
                    .background(Color(red: 0.6, green: 0.4, blue: 1))
                    .cornerRadius(15)
                //                    .frame(maxWidth:300)
                //                    .frame(minWidth:100)
                //                    .frame(width:300, height: 100, alignment: .center)
                
                
                
                
                Image("howto6")
                    
                    .renderingMode(.original)
                    .resizable()
                    .cornerRadius(25)
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 280, height:260, alignment: .center)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                            .frame(width: 310, height: 240, alignment: .center)
                    )
                
                Text("Observe how there are multiple ways on arriving to our destination, for this example we happened to use the car, but ideally we can use multiple forms of transportation to get where we neeed.")
                    .minimumScaleFactor(0.1)
                    .foregroundColor(.white)
                    .font(.system(size: 15, design: .default))
                    .padding(10)
                    .background(Color(red: 0.6, green: 0.4, blue: 1))
                    .cornerRadius(15)
                //                    .frame(maxWidth:300)
                //                    .frame(minWidth:100)
                //                    .frame(width:300, height: 100, alignment: .center)
                
                // button to press for youTube video on takig the buss
                
            

                
                
             
                
            
                    
            }
            .padding(30)
        }
    }
    }


#Preview {
    howToUseChivi()
}
