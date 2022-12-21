//
//  NavLink.swift
//  navigationWithSwiftUI
//
//  Created by Juliano Vaz on 04/12/20.
//

import SwiftUI

struct NavLink: View {
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: DetailView2()) {
                HStack{
                    Text("Comecar")
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.green)
                        .background(Color(.red))
                }
            }
            .cornerRadius(3.0)
            .padding(50)
            .navigationTitle("No principio era...")
        }
    }
}

// MARK: - Canvas Preview 

struct NavLink_Previews: PreviewProvider {
    static var previews: some View {
        NavLink()
    }
}
