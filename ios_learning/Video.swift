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
