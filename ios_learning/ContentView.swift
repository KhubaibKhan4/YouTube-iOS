//
//  ContentView.swift
//  ios_learning
//
//  Created by Muhammad Khubaib Imtiaz on 21/09/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HomeScreen()
            .navigationTitle("Home")
        }
    }
}

struct HomeScreen: View {
    var body: some View{
        NavigationLink(destination: DetailScreen(name: "Muhammad Khubaib Imtiaz", email: "18.bscs.803@gmail.com", id: 1), label: {
            VStack{
                Text("Home Screen")
            }
        })
    }
}
struct DetailScreen: View {
    var name: String
    var email: String
    var id: Int
    var body: some View {
        NavigationLink(destination: {
            MobileScreen()
        }, label: {
            VStack{
                Text("Detail Screen")
                Text("Name: \(name)")
                Text("Email: \(email)")
                Text("Id: \(id)")
            }
        })
    }
}

struct MobileScreen: View {
    @State var navigateToDetail: Bool = false
    var body: some View {
        NavigationLink("hi"){
            VStack{
                Button("Navigate to Detail") {
                    navigateToDetail = true
                }
                
                NavigationLink(destination: EmptyView(), isActive: $navigateToDetail) {
                    EmptyView()
                }
            }
            .navigationTitle("Empty Screen")
        }
    }
}

struct EmptyScreen: View {
    @State var nameList: [String] = ["ABCD", "JASd", "AsdA", "JASDDLAda"]
    @AppStorage var name : String

    var body: some View {
        VStack {
            ScrollView {
                ForEach(nameList, id: \.self) { name in
                    Text(name)
                        .padding()
                        .font(.headline)
                }
            }
            Text("Empty Screen")
                .font(.title)
                .padding()
        }
    }
}


#Preview {
    ContentView()
}
