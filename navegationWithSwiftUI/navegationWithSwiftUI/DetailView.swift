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
                Text("This is screen 1")
                NavigationLink("Show Screen 2", destination: DetailView2())
        }
    }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
