//
//  HomeView.swift
//  HA1App
//
//  Created by Иван Лазарев on 04.03.2020.
//  Copyright © 2020 Иван Лазарев. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    var action: (()->())?
    
    var body: some View {
        Button(action: {
            self.action?()
        }) {
            TabViewItem(icon: "eye", title: "Open")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
