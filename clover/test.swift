//
//  test.swift
//  clover
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct test: View {
    
    
        var body: some View {
            
            ZStack {
                Image("bag")
                    .resizable(resizingMode: .stretch)
                    .ignoresSafeArea()
                
            VideoView(videoID: "UXGjJ61t0yQ")
                .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
                .cornerRadius(12)
                .padding(.horizontal, 10)
            
        }
    }
}
struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
