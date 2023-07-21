//
//  buildoutfit.swift
//  clover
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI
struct buildoutfit: View {
  @State private var titleText = ""
  var body: some View {
    NavigationStack {
      ZStack {
        Image("topper")
          .resizable(resizingMode: .stretch)
          .ignoresSafeArea()
        VStack {
          VStack {
            HStack {
              NavigationLink(destination: secondQ()) {
                Image("tshirt")
                  .resizable(resizingMode: .stretch)
                  .aspectRatio(contentMode: .fit)
                  .scaledToFit()
                  .cornerRadius(15)
                  .padding()
                  .cornerRadius(15)
              }
              NavigationLink(destination: secondQ()) {
                Image("tank")
                  .resizable(resizingMode: .stretch)
                  .aspectRatio(contentMode: .fit)
                  .cornerRadius(15)
                  .scaledToFit()
                  .padding()
              }
            }
              HStack {
                NavigationLink(destination: secondQ()) {
                  Image("dress")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                    .padding()
                }
                NavigationLink(destination: secondQ()) {
                  Image("top5")
                    .resizable(resizingMode: .stretch)
                    .cornerRadius(15)
                    .aspectRatio(contentMode: .fit)
                    .scaledToFit()
                    .padding()
                    .cornerRadius(15)
                }
              }
            }
          }
        }
      }
    }
  }
    struct buildoutfit_Previews: PreviewProvider {
      static var previews: some View {
        buildoutfit()
      }
    }



