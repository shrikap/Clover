//
//  fashionissue.swift
//  clover
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct fashionissue: View {
    var body: some View {
        ZStack{
            
            Image("issue")
                .resizable(resizingMode: .stretch)
                .ignoresSafeArea()
            VStack{
                NavigationLink(destination: homepage()) {
                    Image("homebutton")
                        .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)}
                Spacer()
                
            }
        }
      }
    }
    


struct fashionissue_Previews: PreviewProvider {
    static var previews: some View {
        fashionissue()
    }
}
