//
//  whatIsCTA.swift
//  Chivi
//
//  Created by Rogelio Lozano on 12/15/23.
//

import SwiftUI

struct whatIsCTA: View {
    var body: some View {
        ScrollView{
            VStack(alignment:.center){
                Image("CHIVICROPPED")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .padding(.bottom,50)
                    .frame(width: 200, alignment: .center)
//                    .background(Color(red: 0.1, green: 0.7, blue: 0.9))
                    .cornerRadius(20)
                Text("CTA GRID SYSTEM")
                    .minimumScaleFactor(0.1)
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color(red: 0.6, green: 0.4, blue: 1))
                    .cornerRadius(15)
                Image("CTAMAP")
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
                
                Text("The CTA, or Chicago Transit Authority, serves as the primary public transportation system in Chicago, offering convenient access to every corner of the city. Chicago's layout follows a grid system, and the CTA aligns with this structure, providing both train and bus services for efficient travel. The trains cover extensive distances across the city, while buses offer flexible and localized transportation options. Whether exploring distant destinations or navigating specific neighborhoods, utilizing the CTA proves advantageous for visitors in Chicago.")
                    .minimumScaleFactor(0.1)
                    .font(.system(size: 15, design: .default))
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color(red: 0.6, green: 0.4, blue: 1))
                    .cornerRadius(15)
                //                    .frame(maxWidth:300)
                //                    .frame(minWidth:100)
                //                    .frame(width:300, height: 100, alignment: .center)
                
                Divider()
                    .overlay(Color.blue)
                    .padding(.top, 10)
                
                Image("CTANEWTRAIN")
                    
                    .renderingMode(.original)
                    .resizable()
                    .cornerRadius(25)
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 280, height:250, alignment: .center)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                            .frame(width: 310, height: 240, alignment: .center)
                    )
                
                Text("This is the newest of CTA's trains, which comes with amazing perks. The new 7000-series railcars come with amazing cosmetic improvements, more security, and enhancments that make for a more comportable ride; upgrading the trains suspension, making a less chaotic ride. ")
                    .minimumScaleFactor(0.1)
                    .foregroundColor(.white)
                    .font(.system(size: 15, design: .default))
                    .padding(10)
                    .background(Color(red: 0.6, green: 0.4, blue: 1))
                    .cornerRadius(15)
                
                Text("The CTA's Train system is know as The 'L'. It will take you from the most southern part of Chicago, to the most northern parts. Think of any place in Chicago, and the train can get you there, and if not, very close by. ")
                    .minimumScaleFactor(0.1)
                    .foregroundColor(.white)
                    .font(.system(size: 15, design: .default))
                    .padding(10)
                    .background(Color(red: 0.6, green: 0.4, blue: 1))
                    .cornerRadius(15)
                
                Image("LGUIDE")
                    .renderingMode(.original)
                    .resizable()
                    .cornerRadius(25)
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 280, height:220, alignment: .center)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                            .frame(width: 310, height: 210, alignment: .center)
                    )
                
                Link("Train Tutorial!", destination: URL(string: "https://www.youtube.com/watch?v=PIUFbPNh-tE")!)
                    .minimumScaleFactor(0.1)
                    .foregroundColor(.white)
                    .padding()
                    .cornerRadius(20)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color(red: 0.6, green: 0.4, blue: 1))
                    )
                    .frame(width: 100, height: 100, alignment: .center)
                    
                
                Divider()
                    .overlay(Color.blue)
                    .padding(.top, 10)
                
                Image("CTAMAPLOOP")
                    .renderingMode(.original)
                    .resizable()
                    .cornerRadius(25)
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 250, height:380, alignment: .center)
                    .cornerRadius(20)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                            .frame(width: 280, height: 360)
                    )
                
                Text("The image above is called the 'Loop.' It is referred as the Loop because of it's cyclical shape, and it is the center peace of the 'L.' If you would want to travel to the west side of Chicago, while you are on the south side, you would tranfer to another train at the Loop. The Loop's main purpose is to connect all of Chicago's Train lines at one point, making it the ideal place to transfer to a different train.")
                    .minimumScaleFactor(0.1)
                    .foregroundColor(.white)
                    .font(.system(size: 15, design: .default))
                    .padding(10)
                    .background(Color(red: 0.6, green: 0.4, blue: 1))
                    .cornerRadius(15)
                
                Divider()
                    .overlay(Color.blue)
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                
                Image("CTAMAPBUS")
                    .renderingMode(.original)
                    .resizable()
                    .cornerRadius(25)
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 280, height:200, alignment: .center)

                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                            .frame(width: 310, height: 190, alignment: .center)
                    )
                
                Text("In this capture, the grey vertical and horizontal lines are Chicago’s streets that mostly always form a grid. Each main street in Chicago has a street associated with it, meaning some buses will be able to take you north or south,  while others will take you west or east.")
                    .minimumScaleFactor(0.1)
                    .foregroundColor(.white)
                    .font(.system(size: 15, design: .default))
                    .padding(10)
                    .background(Color(red: 0.6, green: 0.4, blue: 1))
                    .cornerRadius(15)
                //                    .frame(maxWidth:300)
                //                    .frame(minWidth:100)
                //                    .frame(width:300, height: 100, alignment: .center)
                Text("Take advantage of this grid system! They can get you to places that a train wouldn’t. Buses will save you from long walks that are taking precious touring time away!")
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
                
            

                
                
                // image of CTA bus
                Image("CTABUS")
                    .renderingMode(.original)
                    .resizable()
                    .cornerRadius(25)
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 280, height:220, alignment: .center)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                            .frame(width: 310, height: 210, alignment: .center)
                    )
                
                Link("Bus Tutorial!", destination: URL(string: "https://www.youtube.com/watch?v=bb4JRvkp1FQ")!)
                    .minimumScaleFactor(0.1)
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color(red: 0.6, green: 0.4, blue: 1))
                    )
                    .frame(width: 100, height: 100, alignment: .center)
                
                
            }
            .padding(30)
        }
    }
       
}

#Preview {
    whatIsCTA()
}

