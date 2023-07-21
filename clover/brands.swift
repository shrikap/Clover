//
//  brands.swift
//  clover
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct brands: View {
    @State private var sheinText = false
    @State private var reformationText = false
    var body: some View {
        NavigationStack{
            ZStack{
                Image("14pro")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit
                    )
           
                VStack{
        
                    
                    NavigationLink(destination: homepage()) {
                        Image("homebutton")
                            .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)}
                    Spacer(minLength: 200)
                    
                    Button(action: {
                        
                        withAnimation(.linear(duration: 1)) {
                            self.sheinText = true
                            self .reformationText = false
                            
                        }
                        
                    }, label: {
                        Image("redo2")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    })
                    Button(action: {
                        
                        withAnimation(.linear(duration: 1)) {
                            self.sheinText = false
                            self .reformationText = true
                            
                            
                        }
                        
                    }, label: {
                        Image("buttonreformation")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    })
                    Image("insert2")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                Spacer()
                  
                }//vstack
            
                if $sheinText.wrappedValue {
                    sheinPopUp()
                }
                if $reformationText.wrappedValue {
                    reformationPopUp()
                }
            }//zstack
            .ignoresSafeArea()
        }
    }
    
    private func sheinPopUp() -> some View {
        
        VStack (spacing : 5) {
            
            VStack {
            
                
                Image("1")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(30)
                
            }
            
            Button(action: {
                
                withAnimation {
                    
                    self.sheinText = false
                    
                }
            }, label: {
                Text("Close")
                    .foregroundColor(Color.white)
        
                
            })
            
        }
        
        .padding()
        .frame(width: 375, height: 400)
        .background(Color(red: 242/255, green: 78/255, blue: 143/255))
        .cornerRadius(30)
        .shadow(radius: 30 )
        
    }
    
    private func reformationPopUp() -> some View {
        
        VStack (spacing : 5) {
            
            VStack {
                
                
                Image("2")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(30)
            }
            
            Button(action: {
                
                withAnimation {
                    
                    self.reformationText = false
                    
                }
            }, label: {
                Text("Close")
                    .foregroundColor(Color.white)
                   
            })
            
        }
        
        .padding()
        .frame(width: 375, height: 400)
        .background(Color(red: 242/255, green: 78/255, blue: 143/255))
        .cornerRadius(30)
        .shadow(radius: 30 )
        
    }
   
}


struct brands_Previews: PreviewProvider {
    static var previews: some View {
        brands()
    }
}
