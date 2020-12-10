//
//  PageViewUI.swift
//  navegationWithSwiftUI
//
//  Created by Juliano Vaz on 04/12/20.
//

import SwiftUI

struct PageViewUI: View {
    var body: some View {
        ZStack{
            TabView {
                Text("1")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.pink)
               
                Text("2")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.red)
                Text("3")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.green)
                Text("4")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.blue)
            }
            //estilo 1 de tabbar
            //            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .tabViewStyle(PageTabViewStyle())
            //aqui nao mostra com ficaria as bolinhas passando abaixo:
            //            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            //            .edgesIgnoringSafeArea(.all)
            //            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
        }
        .background(Color(.green))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    
         

}
    
}

struct PageViewUI_Previews: PreviewProvider {
    static var previews: some View {
        PageViewUI()
    }
}
