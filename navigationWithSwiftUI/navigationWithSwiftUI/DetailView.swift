//
//  DetailView.swift
//  navegationWithSwiftUI
//
//  Created by Juliano Vaz on 04/12/20.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var rootIsActive: Bool
    @State var isActive2: Bool = false
    
    @State private var navigationId = UUID()
    
    var body: some View {
            VStack {
                NavigationLink("Show Detail View 2",
                               destination: DetailView2(rootIsActive: self.$rootIsActive, detailIsActive: self.$isActive2)
//                              , isActive: self.$isActive2 //A QUE QUE EU FACO A MUDANCA...
                )
//            Uso de notification para pular dimisses
                .id(navigationId)
                .onReceive(NotificationCenter.default.publisher(for: Notification.Name("popToDetailView"))) { output in
                    navigationId = UUID()
                }
                
        }
        .navigationBarTitle("Detail View")
        
    }
    
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView(rootIsActive: .constant(true))
//    }
//}
