//
//  Video.swift
//  ios_learning
//
//  Created by Muhammad Khubaib Imtiaz on 07/10/2024.
//

import SwiftUI

struct VideoItem: Hashable, Codable{
    var title: String
    var thumbnail: String
    var channelImage: String
    var channelName: String
    var viewCount: String
    var pubTime: String
}

struct DemoView: View {
    var body: some View {
        var myNumber = [1,2,3,4]
        let lable = "This is Label"
        let number = 50
        let result = lable + String(number)
        
        
        let qoution = """
This is the paragraph style and we can handle this \(myNumber)
"""
        
        var fruits = ["grapes","apple","limes"]
        
        fruits.append("blueberries")
        
        var occopations = ["Demo":"This","Well":"Done"]
        occopations["dyane"] = "James"
        
        var newfruits = []
        var collections : [String:Float]
        
        let score = if 0>10{
            ""
        }else{
            ""
        }
        
        var optionalString : String? = "hello"
        print(optionalString==nil)
        
        if let name = optionalString {
            "If there is no values"
        }
        
        let vegetable = "red paper"
        switch vegetable{
        case "new":{
            
        }
        case "wel":{
            
        }
        }
        welcomeFunc(person: "New")
        
        Text("Demo View\(myNumber[1])")
    }
}

func welcomeFunc(person: String) -> String{
    return person
}

func hasMatched(list: [Int], condition: (Int) -> Bool) -> Int{
    let data = list
    if 100 > 10{
        condition(10) {
            return true
        }
    }
}
