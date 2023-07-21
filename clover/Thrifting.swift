//
//  Thrifting.swift
//  clover
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct Thrifting: View {
    
    var body: some View {
        ZStack {
          
                Image("thirff")
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

struct Thrifting_Previews: PreviewProvider {
    static var previews: some View {
        Thrifting()
    }
}
