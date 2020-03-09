//
//  ListView.swift
//  HA1App
//
//  Created by Иван Лазарев on 04.03.2020.
//  Copyright © 2020 Иван Лазарев. All rights reserved.
//

import SwiftUI

struct ListView: View {
    
    @ObservedObject var model : Model
    @EnvironmentObject var isShouldShow: ShowedProps
    var action: (()->())?
    
    var body: some View {
        NavigationView() {
            VStack {
                List {
                    ForEach(Model.make().items) { item in
                        if item.isShown {
                            NavigationLink(destination: ItemView(title: item.name), isActive: self.$isShouldShow.value) {
                                ListViewItem(type: item.type, title: item.name)
                            }
                        } else {
                            NavigationLink(destination: ItemView(title: item.name)) {
                                ListViewItem(type: item.type, title: item.name)
                            }
                        }
                    }
                }
            }.navigationBarTitle("Items List")
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}



struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(model: Model.make()).environmentObject(ShowedProps())
    }
}
