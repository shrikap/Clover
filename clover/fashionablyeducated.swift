//
//  fashionablyeducated.swift
//  clover
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct fashionablyeducated: View {  @State private var sheinText = false
    @State private var reformationText = false
    var body: some View {
        NavigationStack{
            ZStack{
                Image("bg")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit
                    )
                
                VStack{
                    NavigationLink(destination: homepage()) {
                        Image("homebutton")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                        
                    }
                    NavigationLink(destination: history()) {
                        Image("historyyy")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                        
                    }
                    
                    
                    NavigationLink(destination: brands()) {
                        Image("brands")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                }//vstack
                   
                }
            .ignoresSafeArea()
                
            }//zstack
            
        }
    }
    

struct fashionablyeducated_Previews: PreviewProvider {
    static var previews: some View {
        fashionablyeducated()
    }
}
