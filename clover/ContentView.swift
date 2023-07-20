//
//  ContentView.swift
//  clover
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct ContentView: View {@State private var name = ""
    @State private var pass = ""
    @State private var textTitle = ""
    var body: some View {
        NavigationStack{
            ZStack {
                Color(hex:"#FFFBF1")
                    .ignoresSafeArea()
                VStack {
                    Text(textTitle)
                        .font(.title)
                        .background(Image("login")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 420, height: 500))
                        .ignoresSafeArea()
                        .padding(.top, 150)
                    TextField("Enter username", text: $name)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .border(Color(hex:"#F24E8F"), width: 1)
                        .padding()
                        .cornerRadius(50)
                        .foregroundColor(Color(hex:"#FFFBF1"))
                    SecureField("Enter Password", text: $pass)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .cornerRadius(15)
                        .border(Color(hex:"#F24E8F"), width: 1)
                        .padding()
                        .ignoresSafeArea()
                        .foregroundColor(Color(hex:"#FFFBF1"))
                    
                    
                    NavigationLink(destination: homepage()) {
                        Text("Submit")
                        .font(.title2)
                        
                    }
                    .font(.title2)
                            .buttonStyle(.borderedProminent)
                            .tint(Color(hex:"#F24E8F"))

                    
                    
                }
            }
        }
    }
    
}
  
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
