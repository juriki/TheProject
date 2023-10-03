//
//  input.swift
//  TheProject
//
//  Created by Jurij Tokvin on 3.10.2023.
//

import SwiftUI

struct input: View {
        var placeHolder: String = "Put"
        var isSecure: Bool = false
        var body: some View{
            VStack{
                if isSecure
                {
                    SecureField(placeHolder, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .padding()
                        .frame(width: 300, height: 40)
                        .background(Color.green.opacity(0.3))
                        .background()
                        .cornerRadius(5)
                }else{
                    TextField(placeHolder, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .padding()
                        .frame(width: 300, height: 40)
                        .background(Color.green.opacity(0.3))
                        .background()
                        .cornerRadius(5)
                }
            }
        }
    }


#Preview {
    input()
}
