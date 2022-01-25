//
//  ContentView.swift
//  worksearch
//
//  Created by Sonny Fishback on 1/21/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var appStore : AppStore
    
    var body: some View {
        TabView {
            Text("Hello, world!")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(appStore: AppStore())
    }
}
