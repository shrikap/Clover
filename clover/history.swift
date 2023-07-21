//
//  history.swift
//  clover
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct history: View {
    var body: some View {
        NavigationStack {
               ZStack {
                 Image("history 1")
                   .resizable(resizingMode: .stretch)
                   .ignoresSafeArea()
                  
                  
                      
                       VStack{
                           
                           Spacer()
                           NavigationLink(destination: fashionissue()) {
                               Image("historybutton")
                                   .resizable(resizingMode: .stretch)
                                   .aspectRatio(contentMode: .fit)
                                   .padding(60.0)
                           }
                       
                       
          
                       }
               
               }
             }
           .navigationTitle("back")
           .foregroundColor(Color.black)
           .navigationBarTitleDisplayMode(.inline)
           }





    struct history_Previews: PreviewProvider {
        static var previews: some View {
            history()
        }
    }
}
