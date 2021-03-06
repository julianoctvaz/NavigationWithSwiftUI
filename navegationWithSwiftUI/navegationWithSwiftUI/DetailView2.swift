//
//  DetailView2.swift
//  navegationWithSwiftUI
//
//  Created by Juliano Vaz on 04/12/20.
//

import SwiftUI

struct DetailView2: View {

//    @State private var navigationIdToDetailView2 = UUID()
    
    @Binding var rootIsActive : Bool
    
    var body: some View {
        
            VStack {
                Text("This is Detail View 2")
                NavigationLink("Show Detail View 3", destination: DetailView3(rootIsActive: self.$rootIsActive))
                Button("Go to Home") {
                    NotificationCenter.default.post(name: Notification.Name("popToRootView"), object: nil)
                }
//                Button("Go to DetailView4") {
//                    NotificationCenter.default.post(name: Notification.Name("popToDetailView4"), object: nil)
//                }
            }
//
//        .id(navigationIdToDetailView2)
//        .onReceive(NotificationCenter.default.publisher(for: Notification.Name("popToDetailView2"))) { output in
//            navigationIdToDetailView2 = UUID()
//        }
    }
    
}
//
//struct DetailView2_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView2()
//    }
//}
