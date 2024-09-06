//
//  Tab2.swift
//  Example
//
//  Created by Hadiuzzaman on 23/8/24.
//

import SwiftUI
import ScrollableTabView

struct Tab2: View {
    var body: some View {
        VStack {
            AppBar()
            ScrollableTabView(
                activeBgColor: Color.orange,
                inactiveBgColor: Color.gray,
                activeColor: .primary,
                inActiveColor: .secondary,
                spaceBetween: 12,
                items:   [
                    TabItem(title: WithTextAndIcon(text:"Figure",systemName: "figure"), body: Text("Active item: figure")),
                    TabItem(title: WithTextAndIcon(text:"Walk",systemName: "figure.walk"), body: Text("Active item: walk")),
                    TabItem(title: WithTextAndIcon(text:"Barre",systemName: "figure.barre"), body: Text("Active item: barre")),
                    TabItem(title: WithTextAndIcon(text:"Climbing",systemName: "figure.climbing"), body: Text("Active item: climbing")),
                    TabItem(title: WithTextAndIcon(text:"Dance",systemName: "figure.dance"), body: Text("Active item: dance")),
                    
                ])
        }
    }
}
