//
//  DetailView.swift
//  navegationWithSwiftUI
//
//  Created by Juliano Vaz on 04/12/20.
//

import SwiftUI

struct DetailView: View {
    
    var body: some View {
        VStack {
            Text("This is Detail View")
            NavigationLink("Show Detail View 2", destination: DetailView2())
            Button("Go to Home") {
                NotificationCenter.default.post(name: Notification.Name("popToRootView"), object: nil)
            }
        }
    }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
