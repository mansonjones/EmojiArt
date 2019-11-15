//
//  EmojiArt.swift
//  EmojiArt
//
//  Created by Manson Jones on 11/14/19.
//  Copyright © 2019 Manson Jones. All rights reserved.
//

import Foundation

struct EmojiArt: Codable
{
    var url: URL
    var emojis = [EmojiInfo]()
    
    struct EmojiInfo: Codable {
        let x: Int
        let y: Int
        let text: String
        let size: Int
    }
    
    var json: Data? {
        return try? JSONEncoder().encode(self)
    }
    
    init(url: URL, emojis: [EmojiInfo]) {
        self.url = url
        self.emojis = emojis
    }
}