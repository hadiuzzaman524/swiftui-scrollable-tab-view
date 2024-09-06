//
//  ContentView.swift
//  Example
//
//  Created by Hadiuzzaman on 23/8/24.
//

import SwiftUI
import ScrollableTabView

struct Tab3: View {
    var body: some View {
        VStack {
            AppBar()
            ScrollableTabView(
                activeBgColor: Color.red,
                inactiveBgColor: Color.cyan,
                activeColor: Color.white,
                inActiveColor: Color.black,
                items:   [
                TabItem(title: VStack{
                    Image(systemName: "globe")
                    Text("Test 1")
                }.padding(.horizontal, 12)
                    .padding(.vertical, 4)
                , body: Text("Body 1")),
                TabItem(title: VStack{
                    Image(systemName: "globe")
                    Text("Test 2")
                }.padding(.horizontal, 12)
                    .padding(.vertical, 4)
                , body: Text("Body 2")),
                TabItem(title: VStack{
                    Image(systemName: "globe")
                    Text("Test 3")
                }.padding(.horizontal, 12)
                    .padding(.vertical, 4)
                , body: Text("Body 3")),
                TabItem(title: VStack{
                    Image(systemName: "globe")
                    Text("Test 4")
                }.padding(.horizontal, 12)
                    .padding(.vertical, 4)
                , body: Text("Body 4")),
                TabItem(title: VStack{
                    Image(systemName: "globe")
                    Text("Test 5")
                }.padding(.horizontal, 12)
                    .padding(.vertical, 4)
                , body: Text("Body 5")),
                TabItem(title: VStack{
                    Image(systemName: "globe")
                    Text("Test 6")
                }.padding(.horizontal, 12)
                    .padding(.vertical, 4)
                , body: Text("Body 6")),
            ])
        }
    }
}

#Preview {
    Tab3()
}
