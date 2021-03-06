//
//  DetailView.swift
//  navegationWithSwiftUI
//
//  Created by Juliano Vaz on 04/12/20.
//

import SwiftUI

struct DetailView: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
            VStack {
                Text("This is Detail View 1")
                NavigationLink("Show Detail View 2", destination: DetailView2(rootIsActive: self.$isActive),
                               isActive: self.$isActive)
                    .isDetailLink(false)
        }
    }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
