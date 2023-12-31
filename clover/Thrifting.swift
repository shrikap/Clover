//
//  Thrifting.swift
//  clover
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct Thrifting: View {
    
    var body: some View {
        NavigationStack{
            ZStack {
                
                Image("thirff")
                    .resizable(resizingMode: .stretch)
                    .ignoresSafeArea()
                //hello
                
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
}

struct Thrifting_Previews: PreviewProvider {
    static var previews: some View {
        Thrifting()
    }
}
