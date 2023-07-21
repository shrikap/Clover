//
//  final.swift
//  clover
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI
struct final: View {
  var body: some View {
    ZStack {
      Image("quizlast")
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
  struct final_Previews: PreviewProvider {
    static var previews: some View {
      final()
    }
  }
}









