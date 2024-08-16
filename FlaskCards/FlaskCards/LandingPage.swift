//
//  LandingPage.swift
//  FlaskCards
//
//  Created by desmond on 18/7/2024.
//

import SwiftUI

struct LandingPage: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isSubjectSelectionActive = false
    
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                
                Spacer()
                
                Image(systemName: "graduationcap")
                    .resizable()
                    .frame(width: 100, height: 100)
                // App Title
                Text("Flashcards App")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 40)
                
                // Username Field
                TextField("Username", text: $username)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.bottom, 20)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                
                // Password Field
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.bottom, 20)
                
                // Sign In Button
                Button(action: {
                    // Handle sign in action
                }) {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.pink)
                        .cornerRadius(8)
                }
                .padding(.bottom, 20)
                
                Button(action: {
                    // Handle sign in action
                }) {
                    Text("Continue without signing in")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity)
                    //                    .background(Color.blue)
                        .cornerRadius(8)
                }
                .padding(.bottom, 20)
                
                
                // Or Sign In With
                Text("Or sign in using")
                    .font(.headline)
                    .padding(.bottom, 20)
                
                // Social Media Sign In Buttons
                HStack(spacing: 20) {
                    Button(action: {
                        // Handle Google sign in
                    }) {
                        Image("google") // Make sure to add the logo image to your assets
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    
                    Button(action: {
                        // Handle Facebook sign in
                    }) {
                        Image("facebook") // Make sure to add the logo image to your assets
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    
                    Button(action: {
                        // Handle Twitter sign in
                    }) {
                        Image("twitterx") // Make sure to add the logo image to your assets
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    
                }
                
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    LandingPage()
}
