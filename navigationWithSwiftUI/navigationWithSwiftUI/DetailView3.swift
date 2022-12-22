//
//  DetailView3.swift
//  navegationWithSwiftUI
//
//  Created by Juliano Vaz on 06/03/21.
//

import SwiftUI

struct DetailView3: View {
    
    var body: some View {
        VStack {
            Text("This is Detail View 3")
            NavigationLink("Show Detail View 4", destination: DetailView4())
            Button("Go to Home") {
                NotificationCenter.default.post(name: Notification.Name("popToRootView"), object: nil)
            }
        }
    }
    
}

struct DetailView3_Previews: PreviewProvider {
    static var previews: some View {
        DetailView3()
    }
}
