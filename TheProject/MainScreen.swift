//
//  MainScreen.swift
//  TheProject
//
//  Created by Jurij Tokvin on 28.9.2023.
//

import SwiftUI

struct MainScreen: View {
    var body: some View{
        NavigationView{
            List(0..<15){ item in
                HStack{
                    Image("person")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 50)
                        .cornerRadius(120)
                    VStack{
                        Text("Hi my is \()")
                    }
                }
            }
        }
        .navigationTitle("Friends")
        .listStyle(.grouped)
    }
}



#Preview {
    MainScreen()
}
