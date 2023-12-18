//
//  purchasing.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/25/23.
//

import SwiftUI
import WebKit

// Step 2 - Define a structure for your YouTube Video
//struct YoutubeVideoView: UIViewRepresentable {
//    var youtubeVideoID: String
//    
//    // Step 3 - Define the functions to create a view that will
//    // contain the YouTube video
//    func makeUIView(context: Context) -> WKWebView {
//        WKWebView()
//    }
//    
//    func updateUIView(_ uiView: WKWebView, context: Context) {
//        let path = "https://www.youtube.com/embed/\(youtubeVideoID)"
//        guard let url = URL(string: path) else { return }
//        uiView.scrollView.isScrollEnabled = false
//        uiView.load(.init(url: url))
//    }
//        
//}

// Step 4 - Define the UI for the YouTube video
//struct YoutubeVideoView_Previews: PreviewProvider {
//    static var previews: some View {
//        // Provide a sample YouTube video ID for the preview
//        YoutubeVideoView(youtubeVideoID: "fmWzy6LVebA")
//            .previewLayout(.sizeThatFits)
//            .frame(width: 400, height: 300) // Adjust the frame size as needed
//    }
//}


struct purchasing: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("Purchasing Ventra Cards")
                //                .font(.headline)
                    .font(.title )
                    .padding()
                    .foregroundColor(.white)
//                    .offset(y:-140)
                    .background(Color.purple)
                    .cornerRadius(20)
                
                Image("ventramac")
                    .renderingMode(.original)
                    .resizable()
                    .cornerRadius(20)
                    .aspectRatio(contentMode:.fit)
                    .frame(width:280, height:200, alignment: .center)

                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                            .frame(width: 310, height: 160, alignment: .center)
                    )
                
                
            } // end of Vstack
            
            VStack{
                Text("Ventra Vending Machines (VVMs) are available at all 'L' (train) stations but also at Pharmacy stores (Jewels, CVS, Walmarts)")
                    .font(.system(size: 15, design: .default))
                    .minimumScaleFactor(0.1)
                    .foregroundColor(.white)
                    .padding()
//                    .offset(y:-140)
                    .background(Color.purple)
                    .cornerRadius(20)
                
                
            }// end of Vstack
            .frame(width: 300)
            
            
            Text("Adding A virtual Ventra Card")
                .font(.title)
                .font(.title )
                .padding()
                .foregroundColor(.white)
                .background(Color.purple)
                .cornerRadius(20)
                .offset(y:-50)


            let link = "[Tutorial](https://www.youtube.com/embed/xk6HcGUXZ_w)"
            Text(.init(link))
             
            
        }// end of Scrollview
        
    }// end of Body
    
} // end of view

#Preview {
    purchasing()
}
