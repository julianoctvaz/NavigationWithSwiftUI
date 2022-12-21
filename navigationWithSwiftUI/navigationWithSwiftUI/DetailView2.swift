//
//  DetailView2.swift
//  navigationWithSwiftUI
//
//  Created by Juliano Vaz on 04/12/20.
//

import SwiftUI

struct DetailView2: View {
    
    // MARK: - Properties
    @State private var fullScreen: Bool = false
    @Environment(\.presentationMode) var presentationMode
//    @Environment(\.dismiss) var dismiss only ios 15 or more
    
    
    // MARK: - Body
    
    var body: some View {
        VStack{
            Text("Hello to detail view 2!")

            NavigationView {
                Button("Toggle full screen") {
                    self.fullScreen.toggle()
                }
                .navigationBarTitle("Full Screen Title")
                .navigationBarHidden(fullScreen)
            }
            .statusBar(hidden: fullScreen)
            
        }
        .foregroundColor(Color(.red))
        .background(Color(.green))
        
        Button("Dismiss full!") {
            //   dismiss() only ios 15 or more
            presentationMode.wrappedValue.dismiss()
        }

    }
}

// MARK: - Canvas Preview

struct DetailView2_Previews: PreviewProvider {
    static var previews: some View {
        DetailView2()
    }
}
