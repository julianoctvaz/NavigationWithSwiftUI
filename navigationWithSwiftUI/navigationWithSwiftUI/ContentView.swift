//
//  ContentView.swift
//  navigationWithSwiftUI
//
//  Created by Juliano Vaz on 04/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: DetailView()) {
                Text("Lets go to DetailView")
                    .foregroundColor(.blue)
            }
            .buttonStyle(PlainButtonStyle())
        }
    }
}

// MARK: - Canvas Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
      
        }
    }
}
