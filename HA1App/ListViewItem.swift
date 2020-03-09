//
//  ListViewItem.swift
//  HA1App
//
//  Created by Иван Лазарев on 05.03.2020.
//  Copyright © 2020 Иван Лазарев. All rights reserved.
//

import SwiftUI

struct ListViewItem: View {
    let type: ItemType
    let title: String
    var body: some View {
        HStack {
            type.icon()
            Text(title)
        }
    }
}

struct ListViewItem_Previews: PreviewProvider {
    static var previews: some View {
        ListViewItem(type: .book, title: "Test")
    }
}
