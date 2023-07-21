//
//  sustainablestars.swift
//  clover
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct sustainablestars: View {
    var body: some View {
        NavigationStack {
                   ZStack {
                       Image("sus")
                           .resizable(resizingMode: .stretch)
                           .ignoresSafeArea()
                       
                       
                       
                       VStack {
                           

                             Spacer()
                               .padding(.vertical, 160)
                           NavigationLink(destination: Thrifting()) {
                               Image("thrifting")
                                   .renderingMode(.original)
                                   .resizable(resizingMode: .stretch)
                                   .aspectRatio(contentMode: .fit)
                                   .scaledToFit()
                                   .padding()
                                   
                                   
                               
                           }
                           
                           
                           NavigationLink(destination: Styling()) {
                               Image("stylingtips")
                                   .resizable(resizingMode: .stretch)
                                   .aspectRatio(contentMode: .fit)
                                   
                                   
                           }
                           
                           
                           
                           NavigationLink(destination: DiyInspo()) {
                               Image("diyinspo")
                                   .resizable(resizingMode: .stretch)
                                   .aspectRatio(contentMode: .fit)
                                   .scaledToFit()
                                   .padding()
                               
                              
                               //sewing, thrifting, diy
                                   
                           }
                           Spacer(minLength: 150)
                               .padding()
                           
                           
                       }
                   }
                   }
                   
               }
           }

struct sustainablestars_Previews: PreviewProvider {
    static var previews: some View {
        sustainablestars()
    }
}
