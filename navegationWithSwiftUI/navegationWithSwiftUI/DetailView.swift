//
//  DetailView.swift
//  navegationWithSwiftUI
//
//  Created by Juliano Vaz on 04/12/20.
//

import SwiftUI

struct Message: Identifiable {
    let id = UUID()
    let text: String
}

/*
 [https://www.hackingwithswift.com/articles/216/complete-guide-to-navigationview-in-swiftui](https://www.hackingwithswift.com/articles/216/complete-guide-to-navigationview-in-swiftui)
 
 [https://www.youtube.com/watch?v=1pK1yZlzeTw](https://www.youtube.com/watch?v=1pK1yZlzeTw)
 
 [https://www.raywenderlich.com/5824937-swiftui-tutorial-navigation#toc-anchor-025](https://www.raywenderlich.com/5824937-swiftui-tutorial-navigation#toc-anchor-025)
 
 [https://www.youtube.com/watch?v=8tZjVRXsuig](https://www.youtube.com/watch?v=8tZjVRXsuig)
 
 [https://medium.com/swlh/swiftui-tutorial-lists-and-navigation-16e1b4dbb98b](https://medium.com/swlh/swiftui-tutorial-lists-and-navigation-16e1b4dbb98b)
 
 [https://swiftwithmajid.com/2019/07/24/alerts-actionsheets-modals-and-popovers-in-swiftui/](https://swiftwithmajid.com/2019/07/24/alerts-actionsheets-modals-and-popovers-in-swiftui/)
 */

struct DetailView: View {
    
    @State private var showSheet = false
    @State private var showActionSheet = false
    @State private var showPopOver = false
    @State private var showCoverScreen = false
    
    @State private var message: Message? = nil

    
    var body: some View {
        
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10){
            
            Text("Hello to detail view 1!")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.title)
            
            //navegationTypes
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10){
            
                Text("Tap on the mapping button to see a sheet presentation to page view!")
                Button(action: { self.showSheet = true }) {
                    Image(systemName: "mappin.and.ellipse")
                }
                .sheet(isPresented: $showSheet) {PageViewUI()}
                  
                
                Text("Tap on the mapping button to see a popover presentation to NavLink!")
                Button(action: { self.showPopOver = true }) {
                    Image(systemName: "mappin.and.ellipse")
                }
                .popover(isPresented: $showPopOver) {NavLink()}
                
                
                Text("Tap on the mapping button to see a fullSceenCover presentation to detailview!")

                Button(action: { self.showCoverScreen = true }) {
                    Image(systemName: "mappin.and.ellipse")
                }
                .fullScreenCover(isPresented: $showCoverScreen) {DetailView2()}
            
                
            }
            
            //ActionSheet
            VStack {
                Button("Show action sheet") {
                    self.showActionSheet = true
                }
            }.actionSheet(isPresented: $showActionSheet) {
                ActionSheet(
                    title: Text("Actions"),
                    message: Text("Available actions"),
                    buttons: [
                        .cancel { print(self.showActionSheet) },
                        .default(Text("Action")),
                        .destructive(Text("Delete"))
                    ]
                )
            }
            
            //alert
                VStack {
                    Button("Show alert") {
                        self.message = Message(text: "Hi!")
                    }
                }.alert(item: $message) { message in
                    Alert(
                        title: Text(message.text),
                        dismissButton: .cancel()
                    )
                }
            
            
            }
        }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
