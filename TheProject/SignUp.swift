//
//  SignUp.swift
//  TheProject
//
//  Created by Jurij Tokvin on 28.9.2023.
//

import SwiftUI

struct SignUp: View {
    @State private var myLogin = ""
    @State private var passwordSingUp = ""
    @State private var passwordReType = ""
    @State private var myEmail = ""
    var body: some View{
        ZStack{
            Color(.orange)
                .ignoresSafeArea()
            VStack {
                Label("Sign Up", systemImage: /*@START_MENU_TOKEN@*/""/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                input(placeHolder: "login", value: $myLogin)
                input(placeHolder: "Password", isSecure: true, value: $passwordReType)
                input(placeHolder: "Passowrd", isSecure: true, value: $passwordReType)
                input(placeHolder: "Email", value: $myEmail)
            }
        }
    }
    
}


#Preview {
    SignUp()
}
