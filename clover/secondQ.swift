//
//  secondQ.swift
//  clover
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI
struct secondQ: View {
  @State private var titleText = ""
  var body: some View {
    NavigationStack {
      ZStack {
        Image("pants")
          .resizable(resizingMode: .stretch)
          .ignoresSafeArea()
        VStack {
          HStack {
            NavigationLink(destination: thirdQ()) {
              Image("skirt")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .scaledToFit()
                .cornerRadius(15)
                .padding()
                .cornerRadius(15)
            }
            NavigationLink(destination: thirdQ()) {
              Image("cargos")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
                .scaledToFit()
                .padding()
            }
          }
            HStack {
              NavigationLink(destination: thirdQ()) {
                Image("shorts")
                  .resizable(resizingMode: .stretch)
                  .aspectRatio(contentMode: .fit)
                  .cornerRadius(15)
                  .padding()
              }
              NavigationLink(destination: thirdQ()) {
                Image("flare")
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
struct secondQ_Previews: PreviewProvider {
  static var previews: some View {
    secondQ()
  }
}












