//
//  homepage.swift
//  clover
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct homepage: View {
    var body: some View {
    NavigationStack{
        ZStack{
            
            Image("homepage")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
            VStack{
                Spacer(minLength: 200)
                NavigationLink(destination: fashionablyeducated()) {
                    Image("fe")
                        .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit) }
                
                NavigationLink(destination: sustainablestars()) {
                    Image("stars")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                }
                
                    NavigationLink(destination: signaturestyle()) {
                        Image("signature")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }

                Spacer()
                
                
                
            }//vstack
            
            
        }//zstack
        .ignoresSafeArea()
        
        
    }//navstack
}
}


struct homepage_Previews: PreviewProvider {
    static var previews: some View {
        homepage()
    }
}
