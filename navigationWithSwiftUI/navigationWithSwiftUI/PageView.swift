//
//  PageView.swift
//  navigationWithSwiftUI
//
//  Created by Juliano Vaz on 04/12/20.
//

import SwiftUI

struct PageView: View {
    
    //MARK: - Properties
    //    @Environment(\.presentationMode) var presentation: Binding<PresentationMode> // deprecated
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        ZStack{
            TabView {
                VStack {
                    Text("1")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.pink)
                    Button("Voltar", //case 1
                           action: { presentation.wrappedValue.dismiss() }
                    )
                }
                
                VStack {
                    Text("2")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.red)
                    Button("Voltar") { // case 2
                        presentation.wrappedValue.dismiss()
                    }
                }
                
                VStack {
                    Text("3")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.green)
                    Button("Voltar") {
                        presentation.wrappedValue.dismiss()
                    }
                }
                
                VStack {
                    Text("4")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.blue)
                    Button("Voltar") {
                        presentation.wrappedValue.dismiss()
                    }
                }
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
    
    
    
    public func dismiss() {
        presentation.wrappedValue.dismiss()
    }
}



// MARK: - Canvas Preview

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
    }
}
