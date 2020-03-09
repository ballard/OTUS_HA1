//
//  Item.swift
//  HA1App
//
//  Created by Иван Лазарев on 04.03.2020.
//  Copyright © 2020 Иван Лазарев. All rights reserved.
//

import Foundation
import SwiftUI

enum ItemType: String {
    case book
    case music
    case movie
    case game
    
    func icon() -> Image {
        switch self {
        case .book:
            return Image(systemName: "book")
        case .game:
            return Image(systemName: "gamecontroller")
        case .music:
            return Image(systemName: "music.mic")
        case .movie:
            return Image(systemName: "film")
        }
    }
}

struct Item: Identifiable {
    let id = UUID()
    let name: String
    let type: ItemType
    let isShown: Bool
}
