//
//  ContentView.swift
//  TheProject
//
//  Created by Jurij Tokvin on 28.9.2023.
//

import SwiftUI

struct ContentView: View {
    @State public var username = ""
    @State private var password = ""
    @State private var showingMainScreen = false
    @State private var showingSignUP = false
    var body: some View {
        NavigationStack{
            ZStack{
                Color.orange
                    .ignoresSafeArea()
                    VStack {
                        Label("Login", systemImage: /*@START_MENU_TOKEN@*/""/*@END_MENU_TOKEN@*/)
                            .padding()
                            .font(.largeTitle)
                        input(placeHolder: "Username", value: $username)
                        input(placeHolder: "Password", isSecure: true, value: $password)
                        Button{
                            validatoin()
                        } label: {
                            Text("Login")
                                .frame(width: 300, height: 40)
                        }
                        .navigationDestination(isPresented:$showingMainScreen) {
                            MainScreen()
                            }
                        .border(/*@START_MENU_TOKEN@*/Color(red: 0.19215686274509805, green: 1.0, blue: 0.19607843137254902)/*@END_MENU_TOKEN@*/, width: 3)
                        .background(/*@START_MENU_TOKEN@*/Color(red: 0.19215686274509805, green: 1.0, blue: 0.19607843137254902)/*@END_MENU_TOKEN@*/)
                        .cornerRadius(5)
                        .contentMargins(50)

                        
                        Button("Sign Up")
                        {
                            showingSignUP = true
                        }.navigationDestination(isPresented:$showingSignUP) {
                            SignUp()
                            }
                    }

                }.navigationBarHidden(true)
            }

    }
    

    func validatoin(){
        if username == "Jura" && password == "123"
        {
            showingMainScreen = true
        }
        
    }
}



#Preview {
    ContentView()
}
