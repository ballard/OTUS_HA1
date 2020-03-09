//
//  RootView.swift
//  HA1App
//
//  Created by Иван Лазарев on 01.03.2020.
//  Copyright © 2020 Иван Лазарев. All rights reserved.
//

import SwiftUI

struct RootView: View {
    
    @State var selectedView = 0
    @EnvironmentObject var isShouldShow: ShowedProps
    
    var body: some View {
        TabView(selection: self.$selectedView) {
            HomeView(action: {
                self.isShouldShow.value = true
                self.selectedView = 1
            })
                .tag(0)
                .tabItem {
                    TabViewItem(icon: "house", title: "Home")
            }
            ListView(model: Model.make()).environmentObject(isShouldShow)
                .tag(1)
                .tabItem {
                    TabViewItem(icon: "list.bullet", title: "List")
            }.onAppear {
                print("list appear")
            }
            AboutView()
                .tag(2)
                .tabItem {
                    TabViewItem(icon: "info.circle", title: "About")
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
