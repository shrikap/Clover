//
//  findyourstyle.swift
//  clover
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI
struct findyourstyle: View {
  @State private var streetStyle = false
  @State private var cottageCore = false
  @State private var gothic = false
  var body: some View {
    ZStack {
      Image("findurstyle (1)")
        .resizable(resizingMode: .stretch)
        .ignoresSafeArea()
      VStack {
          
        Spacer(minLength: 300)
        Button(action: {
                  withAnimation(.linear(duration: 1)) {
                    self.streetStyle = true
                    self.cottageCore = false
                    self.gothic = false
                  }
                  }, label: {
                  Image("streetstyle")
                }) // street style button
        Button(action: {
                  withAnimation(.linear(duration: 1)) {
                    self.streetStyle = false
                    self.cottageCore = true
                    self.gothic = false
                  }
                  }, label: {
                  Image("cottagecore")
                }) //cottage core button
        Button(action: {
                  withAnimation(.linear(duration: 1)) {
                    self.streetStyle = false
                    self.cottageCore = false
                    self.gothic = true
                  }
                  }, label: {
                  Image("gothic")
                }) //gothic button
          Spacer()
      } // end of Vstack
      if $streetStyle.wrappedValue {
        streetStylePopUp()
      }
      if $cottageCore.wrappedValue {
        cottageCorePopUp()
      }
      if $gothic.wrappedValue {
        gothicPopUp()
      }
    } // end of Zstack
  } // end of body
  private func streetStylePopUp() -> some View {
      VStack (spacing : 10) {
        Image("SBstreet 1")
          .resizable()
        Button(action: {
          withAnimation {
            self.streetStyle = false
          }
        }, label: {
          Text("Close")
        })
        .padding(5).background(Color(hex: "#0FBB8A"))
        .foregroundColor(Color.white)
        .cornerRadius(5).shadow(radius: 5)
      }
      .padding()
      .frame(width: 300, height: 200)
      .background(Color(hex: "#0FBB8A"))
      .cornerRadius(20)
      .shadow(radius: 20)
    }
  private func cottageCorePopUp() -> some View {
      VStack (spacing : 10) {
        Image("SBstreet 1")
        Button(action: {
          withAnimation {
            self.cottageCore = false
          }
        }, label: {
          Text("Close")
        })
        .padding(5).background(Color.blue)
        .foregroundColor(Color.white)
        .cornerRadius(5).shadow(radius: 5)
      }
      .padding()
      .frame(width: 300, height: 200)
      .background(Color(hex: "#0FBB8A"))
      .cornerRadius(20)
      .shadow(radius: 20)
    }
  private func gothicPopUp() -> some View {
    VStack (spacing : 10) {
      Image("SBstreet 1")
      Button(action: {
        withAnimation {
          self.gothic = false
        }
      }, label: {
        Text("Close")
      })
      .padding(5).background(Color.blue)
      .foregroundColor(Color.white)
      .cornerRadius(5).shadow(radius: 5)
    }
    .padding()
    .frame(width: 300, height: 200)
    .background(Color(hex: "#0FBB8A"))
    .cornerRadius(20)
    .shadow(radius: 20)
  }
} // end of struct
struct findyourstyle_Previews: PreviewProvider {
  static var previews: some View {
    findyourstyle()
  }
}











