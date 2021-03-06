//
//  DetailView3.swift
//  navegationWithSwiftUI
//
//  Created by Juliano Vaz on 06/03/21.


import SwiftUI

struct DetailView3: View {
    
    @Binding var shouldPopToDetailView : Bool
    @Binding var shouldPopToRootView : Bool
//    @State private var navigationId = UUID()
    
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
                Text("Pop to DetailView(One)")
            }
            Button (
                action: {
                    self.shouldPopToRootView = false
                    
                    //                NotificationCenter.default.post(name: Notification.Name("popToRootView"), object: nil)
                }
            ){
                Text("Pop to root (Content View)")
            }
        }
    }
}
//
//struct DetailView3_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView3()
//    }
//}
