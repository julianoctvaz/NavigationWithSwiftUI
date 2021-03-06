//
//  ContentView.swift
//  navegationWithSwiftUI
//
//  Created by Juliano Vaz on 04/12/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var navigationId = UUID()
    
    
    var body: some View {
    
        NavigationView {
            VStack  {
                Text("This is the Content View 1")
                NavigationLink("Show Screen 2", destination: DetailView2())
            }
        }
        .id(navigationId)
        .onReceive(NotificationCenter.default.publisher(for: Notification.Name("popToRootView"))) { output in
            navigationId = UUID()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
      
        }
    }
}