//
//  DetailView2.swift
//  navegationWithSwiftUI
//
//  Created by Juliano Vaz on 04/12/20.
//

import SwiftUI

struct DetailView2: View {

    @State private var fullScreen: Bool = false
    
    var body: some View {
        
        VStack{
            
            Text("Hello to detail view 2!")
        
            NavigationView{
                Button("Toggle full screen"){
                    self.fullScreen.toggle()
                }
                .navigationBarTitle("Full Screen Title")
                .navigationBarHidden(fullScreen)
               
            }
         
//            .statusBar(hidden: fullScreen)
                
        }
        .foregroundColor(Color(.red))
        .background(Color(.green))
  
    }
}

struct DetailView2_Previews: PreviewProvider {
    static var previews: some View {
        DetailView2()
    }
}
