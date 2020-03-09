//
//  Model.swift
//  HA1App
//
//  Created by Иван Лазарев on 04.03.2020.
//  Copyright © 2020 Иван Лазарев. All rights reserved.
//

import Foundation

class Model: ObservableObject {
    @Published var items: [Item]
    
    init(items: [Item]) {
        self.items = items
    }
    
    class func make() -> Model {
        let items = [Item(name: "Witcher", type: .game, isShown: false),
                     Item(name: "Star Wars", type: .movie, isShown: true),
                     Item(name: "Metallica", type: .music, isShown: false),
                     Item(name: "The Lord Of The Rings", type: .book, isShown: false)]
        return Model(items: items)
    }
}
