//
// howToUseChivi.swift
// Chivi
//
// Created by student on 12/15/23.
//
import SwiftUI
struct howToUseChivi: View {
  @AppStorage("currentPage") var currentPage = 1
  var body: some View {
    // For slide animation
    ZStack{
      //Changing Between Views
      if currentPage == 1{
        ExtractedView(image: "chooseATour1", title: "Choose A Tour", detail: "Chivi provides you with tours to explore Chicago", bgColor: Color(red: 0.863, green: 0.816, blue: 1))
          .transition(.scale)
      }
      if currentPage == 2{
        ExtractedView(image: "chooseALocation", title: "Choose A Location", detail: "Choose which locations to visit on your route from top to bottom", bgColor: Color(red: 0.863, green: 0.816, blue: 1))
          .transition(.scale)
      }
        if currentPage == 3{
          ExtractedView(image: "learnAndGo", title: "Learn & Go", detail: "Read up on the significance of the locations and press go to get directions", bgColor: Color(red: 0.863, green: 0.816, blue: 1))
            .transition(.scale)
        }
        if currentPage == 4{
          ExtractedView(image: "howto3", title: "Favorites", detail: "Star your favorite locations in Chicago", bgColor: Color(red: 0.863, green: 0.816, blue: 1))
            .transition(.scale)
        }
    }
    .overlay (
      //Button
      Button(action: {
        // changing views
        withAnimation(.easeInOut) {
          // checking
          if currentPage < totalPages{
            currentPage += 1
          }
          else {
            currentPage = 1
          }
        }
      }, label: {
        Image(systemName: "chevron.right")
          .font(.system(size: 20, weight: .semibold))
          .foregroundColor(.black)
          .frame(width: 60, height : 60)
          .background(Color.white)
          .clipShape(Circle())
        // Circular Slider
          .overlay (
            ZStack{
              Circle()
                .stroke(Color.black.opacity(0.04), lineWidth: 4)
              Circle()
                .trim(from: 0, to: CGFloat(currentPage) / CGFloat(totalPages))
                .stroke(Color.white, lineWidth: 4)
                .rotationEffect(.init(degrees: -90))
            }
            .padding(-15)
          )
      })
      .padding(.bottom, 50)
      ,alignment: .bottom
    )
  }
}
#Preview {
  howToUseChivi()
}
struct ExtractedView: View {
  var image: String
  var title: String
  var detail: String
  var bgColor: Color
  @AppStorage("currentPage") var currentPage = 1
  var body: some View {
    VStack(spacing: 20){
      HStack{
        // Showing it only for first Page
        if currentPage == 1{
          Text("Welcome!")
            .font(.title)
            .fontWeight(.semibold)
          //letter spacing
            .kerning(1.4)
        }
        else{
          // Back Button
          Button(action: {
            withAnimation(.easeInOut) {
              currentPage -= 1
            }
          }, label: {
            Image(systemName: "chevron.left")
              .foregroundColor(.white)
              .padding(.vertical, 10)
              .padding(.horizontal)
              .background(Color.black.opacity(0.4))
              .cornerRadius(10)
          })
        }
        Spacer()
        Button(action: {
          withAnimation(.easeInOut) {
            currentPage = 4
          }
        }, label: {
          Text("Skip")
            .fontWeight(.semibold)
            .kerning(1.2)
        })
      }
      .foregroundColor(.black)
      .padding()
      Spacer(minLength: 0)
      Text(title)
        .font(.title)
        .fontWeight(.bold)
        .foregroundColor(.black)
      Image(image)
        .resizable()
        .aspectRatio(contentMode: .fit)
        //.frame(width: 200, height: 200)
        .overlay(
          RoundedRectangle(cornerRadius: 5)
            .stroke(Color.purple, lineWidth: 5)
        )
        .padding(.bottom)
      Text(detail)
        .fontWeight(.semibold)
        .kerning(1.3)
        .multilineTextAlignment(.center)
      // Minimum Spacing When phone is reducing
      Spacer(minLength: 120)
    }
    .background(bgColor.cornerRadius(10))
  }
  //Color(red: 0.863, green: 0.816, blue: 1)
  //"Read up on the significance of the locations and press go to get directions"
}
var totalPages = 4
