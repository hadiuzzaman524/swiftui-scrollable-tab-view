//
//  ContentView.swift
//  Example
//
//  Created by Hadiuzzaman on 23/8/24.
//

import SwiftUI
import ScrollableTabView

struct Tab1: View {
    var body: some View {
        VStack {
            AppBar()
            ScrollableTabView(
                activeBgColor:Color.red,
                items: (1...20).map {
                    index in
                    TabItem(title: WithText(text:"Item \(index)"), body: Text("Active Item: \(index)"))
                }
            )
        }
    }
}

#Preview {
    Tab1()
}
