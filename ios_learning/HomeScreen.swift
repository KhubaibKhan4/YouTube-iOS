//
//  HomeScreen.swift
//  ios_learning
//
//  Created by Muhammad Khubaib Imtiaz on 25/09/2024.
//

import SwiftUI

struct HomeScreenView: View{
    let youtubeList = ["Macos","Android", "iPhone","Web", "React"]
    var body: some View{
        NavigationView {
            ScrollView{

                Image("ground")
                    .resizable()
                    .frame(height: 200)
                    .clipShape(Circle())
                    .shadow(radius: 40)
                    .padding()
                    .offset(CGSizeMake(0,-20))
             
                Text("Welcome")
                    .font(Font.title)
                    .bold()
                    .shadow(color:.gray,radius: 4)
                
                
            }
        }
    }
}

#Preview {
    HomeScreenView()
}
