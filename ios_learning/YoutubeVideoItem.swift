//
//  YoutubeVideoItem.swift
//  ios_learning
//
//  Created by Muhammad Khubaib Imtiaz on 29/09/2024.
//

import SwiftUI

struct YoutubeVideoItem: View {
    var body: some View {
        VStack{
            Image("ground")
                .resizable()
                .frame(height: 200)
                .cornerRadius(CGFloat(24))
                .padding(6)
            HStack{
                Image("ground")
                    .frame(width: 45,height: 45, alignment: Alignment.leading)
                    .clipShape(Circle())
                    .offset(x:10)
                VStack{
                    Text("YouTube Video Title And This will be Used to display the Title.")
                        .bold()
                        .fontWeight(Font.Weight.heavy)
                        .font(.custom("roboto", size: 14))
                        .lineLimit(2)
                        .padding(12)
                    HStack{
                        Text("Mr Beast •")
                            .font(Font.caption)
                            .bold()
                        
                        Text("3.6k views •")
                            .font(Font.caption)
                        
                        Text("7 hours ago")
                            .font(Font.caption)
                        
                    }.offset(x: -34, y: -14)
                }
                Image(systemName: "ellipsis")
                    .rotationEffect(Angle.degrees(90))
                    .foregroundColor(.black)
            }
        }.padding(EdgeInsets.init(top: 2, leading: 6, bottom: 6, trailing: 6))
    }
}

#Preview{
    YoutubeVideoItem()
}
