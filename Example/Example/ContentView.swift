//
//  ContentView.swift
//  Example
//
//  Created by Hadiuzzaman on 23/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab1().tabItem{
                Label("Style 1", systemImage: "text.book.closed")
            }
            Tab2().tabItem{
                Label("Style 2", systemImage: "book.pages.fill")
            }
            Tab3().tabItem{
                Label("Custom", systemImage: "book.and.wrench")
            }
        }
    }
}

#Preview {
    ContentView()
}
