//
//  DetailView3.swift
//  navegationWithSwiftUI
//
//  Created by Juliano Vaz on 06/03/21.


import SwiftUI

struct DetailView3: View {
    
    @Binding var shouldPopToDetailView: Bool
    @Binding var shouldPopToRootView: Bool
    
    var body: some View {
        VStack {
            Text("This is Detail View 3")
            Button (
                action: {
                    print("entrou")
                    self.shouldPopToDetailView = false
                    NotificationCenter.default.post(name: Notification.Name("popToDetailView"), object: nil)
                }
            ){
                Text("Pop to Detail View 1")
            }
            Button (action: { self.shouldPopToRootView = false }) {
                Text("Pop to root (Content View)")
            }
        }
        .navigationTitle("Detail View 3")
        
    }
}
//
//struct DetailView3_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView3()
//    }
//}
