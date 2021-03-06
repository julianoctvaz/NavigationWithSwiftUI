//
//  DetailView2.swift
//  navegationWithSwiftUI
//
//  Created by Juliano Vaz on 04/12/20.
//

import SwiftUI

struct DetailView2: View {

    @Binding var rootIsActive : Bool
    @Binding var detailIsActive: Bool
    
    var body: some View {
        
            VStack {
                NavigationLink("Show Detail View 3",
                               destination: DetailView3(shouldPopToDetailView: self.$detailIsActive, shouldPopToRootView: self.$rootIsActive)
                )
                
                
                Button (
                    action: {
                        self.rootIsActive = false
                    }
                )
                {
                    Text("Pop to root")
                }
                
                
            }
            .navigationBarTitle("Detail View 2") // isso nao aparece nas outras
    }
}

//struct DetailView2_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView2(shouldPopToRootView: .constant(true), vemPara1TelaAPartirDa3: false)
//    }
//}
