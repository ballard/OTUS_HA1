//
//  AboutView.swift
//  HA1App
//
//  Created by Иван Лазарев on 04.03.2020.
//  Copyright © 2020 Иван Лазарев. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    
    @State var isModalShowed: Bool = false
    
    var body: some View {
        Button(action: {
            self.isModalShowed = true
        }) {
            TabViewItem(icon: "hand.raised", title: "Show")
        }.sheet(isPresented: self.$isModalShowed, onDismiss: {
            print("modal dismissed")
        }) {
            ModalView()
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
