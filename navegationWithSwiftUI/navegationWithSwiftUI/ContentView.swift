//
//  ContentView.swift
//  navegationWithSwiftUI
//
//  Created by Juliano Vaz on 04/12/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var isActive : Bool = false
   
    
    
    var body: some View {
    
        NavigationView {
            VStack  {
                NavigationLink("Go to DetailView(One)",
                               destination: DetailView(rootIsActive: self.$isActive), //sempre que for pra lá esas var deve ser falsa
                               isActive: self.$isActive //ATENCAO NESSA LINHA...
                               )
                
            }
            .navigationBarTitle("Content View")
//            .isDetailLink(false)
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
      
        }
    }
}
