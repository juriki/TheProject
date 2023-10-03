//
//  SignUp.swift
//  TheProject
//
//  Created by Jurij Tokvin on 28.9.2023.
//

import SwiftUI

struct SignUp: View {
    var body: some View{
        ZStack{
            Color(.orange)
                .ignoresSafeArea()
            VStack {
                Label("Sign Up", systemImage: /*@START_MENU_TOKEN@*/""/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                input(placeHolder: "login")
                input(placeHolder: "Password", isSecure: true)
                input(placeHolder: "Passowrd", isSecure: true)
                input(placeHolder: "Email")
            }
        }
    }
    
}


#Preview {
    SignUp()
}
