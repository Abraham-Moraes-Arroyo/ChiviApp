//
//  SwiftUIView.swift
//  Chivi
//
//  Created by Rogelio Lozano on 11/29/23.
//
import Foundation
import SwiftUI
import Firebase
import FirebaseFirestore
let fs = Firestore.firestore()

struct Login: View {
    @State private var email = ""
    @State private var password = ""
    @State private var alreadyLoggedIn = false;
    
    var body: some View {
        if alreadyLoggedIn{
            ContentView(sample: 12)
        }else{
            content
        }
    }
    
    
    var content: some View{
        ZStack{
            Color.white
            
            RoundedRectangle(cornerRadius:30, style: .continuous)
                .foregroundStyle(.linearGradient(colors:[.purple, .blue], startPoint:
                        .topLeading, endPoint: .bottomTrailing))
                .frame(width:1000, height:400)
                .rotationEffect(.degrees(160))
                .offset(y: -350)
            
            VStack(spacing: 20){
                Text("Chivi")
                    .foregroundColor(.white)
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .offset(x: -100, y: -100)
                
                // Enter Email text field
                TextField("Email", text: $email)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: email.isEmpty){
                        Text("Email")
                            .foregroundColor(.white)
                        
                        
                    }
                Rectangle()
                    .frame(width: 350,height: 1)
                    .foregroundColor(.white)
                
                // Enter password test field
                SecureField("Password", text: $password)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: password.isEmpty){
                        Text("Password")
                            .foregroundColor(.white)
                            .bold()
                    }
                
                Rectangle()
                    .frame(width: 350,height: 1)
                    .foregroundColor(.white)
                
                // Sign up button
                Button{
                    register()
                }label:{
                    Text("Sign Up")
                        .bold()
                        .frame(width:200,height:40)
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                .fill(.linearGradient(colors:[.pink,.blue],startPoint:
                                        .top, endPoint: .bottomTrailing))
                            
                        )
                        .foregroundColor(.white)
                }
                .padding(.top)
                .offset(y:110)
                
                // Login in Button
                Button{
                    login()
                }label:{
                    Text("Already have an account? Login")
                        .bold()
                        .foregroundColor(.white)
                }
                .padding(.top)
                .offset(y:110)
                
                
                
            }
            .frame(width:350)
            .onAppear {
                Auth.auth().addStateDidChangeListener {auth,user in
                    if user != nil{
                        alreadyLoggedIn.toggle()
                    }
                }
            }
        
        }
        .ignoresSafeArea()
    }
    func login(){
        Auth.auth().signIn(withEmail: email, password: password) {result, error in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
    }
    // this was added after the adding of the code from the first screen shot
    //let fs = Firestore.firestore() // also add this to the button
    
    func register(){
        //this was modified according to what Devin provided
        Auth.auth().createUser(withEmail: email, password: password) {user, error in
            if error == nil && user != nil{
                //here I needed to switch from user to result
                let userDocData: [String: Any] = ["userID":user?.user.uid]
                fs.collection("Users").document((user?.user.uid)!).setData(userDocData)
                print("New User Created")
            } else {
                print("Error created new user: \(error!.localizedDescription)")
            }
        }
    }// bottom of create users
    
    
    
}// the absolute end




struct Login_Preview: PreviewProvider{
    static var previews: some View{
        Login()// do I need to have the name: "", image: "", description: "", and so on here?
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
