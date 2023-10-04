//
//  MainScreen.swift
//  TheProject
//
//  Created by Jurij Tokvin on 28.9.2023.
//

import SwiftUI

struct MainScreen: View {
    var myname = "test"
    @State private var showingMainScreen = false
    var body: some View{
        
        NavigationView{
            NavigationLink(destination: ContentView(), label: {
            List(0..<15){ item in
                HStack{
                    Image("person")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 50)
                        .clipShape(Circle())
                    VStack{
                        Text("Hi my is \(myname)")
                            .font(.title2)
                        Text("Lorem Ipsum is simply dummy text")
                            
                    }
                }
            }
            })

        }
        .navigationTitle("Friends")
        .listStyle(.grouped)
    }
}



#Preview {
    MainScreen()
}
