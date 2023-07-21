//
//  signaturestyle.swift
//  clover
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct signaturestyle: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("signaturestyle")
                    .resizable(resizingMode: .stretch)
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                        .padding(.vertical, 160)
                    NavigationLink(destination: findyourstyle()) {
                        Image("stylefind")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .scaledToFit()
                            .padding()
                    }
                    
                    NavigationLink(destination: toDoRedo()) {
                        Image("yas")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .scaledToFit()
                            
                    }
                    NavigationLink(destination: buildoutfit()) {
                        Image("outfitbuild")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .scaledToFit()
                            .padding()
                        //sewing, thrifting, diy
                    }
                    Spacer(minLength: 100)
                        .padding()
                    
                        
                        
                    
                }
            }
        }
    }
}
struct signaturestyle_Previews: PreviewProvider {
  static var previews: some View {
    signaturestyle()
  }
}



