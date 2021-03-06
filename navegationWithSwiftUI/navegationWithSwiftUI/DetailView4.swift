//
//  DetailView4.swift
//  navegationWithSwiftUI
//
//  Created by Juliano Vaz on 06/03/21.
//

import SwiftUI

struct DetailView4: View {
    
//    @State private var navigationIdToDetailView4 = UUID()
    
    @Binding var shouldPopToRootView : Bool
    
    var body: some View {
        
            VStack {
                Text("This is Detail View 4")
                Button("Go to Detail View") {
                    print("entrou")
                    self.shouldPopToRootView = false
//                    NotificationCenter.default.post(name: Notification.Name("popToDetailView2"), object: nil)
                }
                Button("Go to ContentView") {
                    NotificationCenter.default.post(name: Notification.Name("popToRootView"), object: nil)
                }
            }
        
//        .id(navigationIdToDetailView4)
//        .onReceive(NotificationCenter.default.publisher(for: Notification.Name("popToDetailView4"))) { output in
//            navigationIdToDetailView4 = UUID()
//        }
    }
}

//struct DetailView4_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView4()
//    }
//}
