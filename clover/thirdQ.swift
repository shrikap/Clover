//
//  thirdQ.swift
//  clover
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI
struct thirdQ: View {
    @State private var titleText = ""
    var body: some View {
      NavigationStack {
        ZStack {
          Image("shoes")
            .resizable(resizingMode: .stretch)
            .ignoresSafeArea()
          VStack {
            HStack {
              NavigationLink(destination: final()) {
                Image("blueshoes")
                  .resizable(resizingMode: .stretch)
                  .aspectRatio(contentMode: .fit)
                  .scaledToFit()
                  .cornerRadius(15)
                  .padding()
                  .cornerRadius(15)
              }
              NavigationLink(destination: final()) {
                Image("boots")
                  .resizable(resizingMode: .stretch)
                  .aspectRatio(contentMode: .fit)
                  .cornerRadius(15)
                  .scaledToFit()
                  .padding()
              }
            }
              HStack {
                NavigationLink(destination: final()) {
                  Image("converse")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                    .padding()
                }
                NavigationLink(destination: final()) {
                  Image("crocs")
                    .resizable(resizingMode: .stretch)
                    .cornerRadius(15)
                    .aspectRatio(contentMode: .fit)
                    .scaledToFit()
                    .padding()
                    .cornerRadius(15)
                }
              }
            }
              .navigationTitle("")
              .navigationBarTitleDisplayMode(.inline)
              .navigationBarHidden(false)
            }
          }
        }
        }
struct thirdQ_Previews: PreviewProvider {
  static var previews: some View {
    thirdQ()
  }
}




















