//
//  ContentView.swift
//  navegationWithSwiftUI
//
//  Created by Juliano Vaz on 04/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        NavigationView {
            
            NavigationLink(destination: DetailView()) {
                
                Text("Vamos para tela de detalhes")
                    .foregroundColor(.blue)
                
            }
            .buttonStyle(PlainButtonStyle())
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
