//
//  MasterView.swift
//  navegationWithSwiftUI
//
//  Created by Juliano Vaz on 04/12/20.
//

import SwiftUI
import Combine


struct ModalView: View {
    //presentationMode is an Environment binding to the current PresentationMode of this view. 
    @Environment(\.presentationMode) var presentation
    let message: String
    
    var body: some View {
        VStack {
            Text(message)
            Button("Dismiss") {
                self.presentation.wrappedValue.dismiss()
            }
        }
    }
}


struct MasterView: View {
    @State private var showModal = false
    
    var body: some View {
        VStack {
            Button("Show modal") {
                self.showModal = true
            }
            //aqui poderia ser popover...coverscreen
        }.sheet(isPresented: $showModal, onDismiss: {
            print(self.showModal)
        }) {
            ModalView(message: "This is Modal view")
        }
    }
}


struct MasterView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView()
    }
}
