//
//  TabViewItem.swift
//  HA1App
//
//  Created by Иван Лазарев on 05.03.2020.
//  Copyright © 2020 Иван Лазарев. All rights reserved.
//

import SwiftUI

struct TabViewItem: View {
    let icon: String
    let title: String
    var body: some View {
        VStack {
            Image(systemName: icon)
            Text(title)
        }
    }
}

struct TabViewItem_Previews: PreviewProvider {
    static var previews: some View {
        TabViewItem(icon: "paperplane", title: "Test")
    }
}
