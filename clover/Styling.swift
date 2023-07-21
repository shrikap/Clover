//
//  Styling.swift
//  clover
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct Styling: View {
    var body: some View {
        ZStack{
            Image("style")
                .resizable(resizingMode: .stretch)
                .ignoresSafeArea()
            
            VStack{
                NavigationLink(destination: homepage()) {
                    Image("homebutton")
                        .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)}
                Spacer(minLength:750)
                    .ignoresSafeArea()
                
            }
        }
    }
}

struct Styling_Previews: PreviewProvider {
    static var previews: some View {
        Styling()
    }
}
