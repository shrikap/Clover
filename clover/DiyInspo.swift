//
//  DiyInspo.swift
//  clover
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct DiyInspo: View {
    var body: some View {
        NavigationStack {
              ZStack {
                  Image("diy")
                    .resizable(resizingMode: .stretch)
                    .ignoresSafeArea()
                 
                     
                          VStack {
                             
                              Spacer()
                              NavigationLink(destination: test()) {
                                  Image("shoulder")
                                      .renderingMode(.original)
                                      .resizable(resizingMode: .stretch)
                                      .aspectRatio(contentMode: .fit)
                                      .scaledToFit()
                                  .padding() }
                              NavigationLink(destination: oooclothes()) {
                                  Image("stripe")
                                      .renderingMode(.original)
                                      .resizable(resizingMode: .stretch)
                                      .aspectRatio(contentMode: .fit)
                                      .scaledToFit()
                                  .padding(.all, 30.0)}
                          }
                      }
                  }
              }
            }
          
        









struct DiyInspo_Previews: PreviewProvider {
    static var previews: some View {
        DiyInspo()
    }
}
