//
//  AppBar.swift
//  streamz
//
//  Created by Hadiuzzaman on 16/8/24.
//

import SwiftUI

struct AppBar: View {
    var body: some View {
        if(UIDevice.current.userInterfaceIdiom == .phone){
            HStack{
                Text("Scrollable Tab View")
                    .font(.title)
                Spacer()
            }.padding(.horizontal,12)
            
                
        }
    }
}

#Preview {
    AppBar()
}