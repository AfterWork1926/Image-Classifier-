//
//  SecondView.swift
//  Chal
//
//  Created by Roberto Farella on 22/02/22.
//
import UIKit
import SwiftUI

struct SecondView: View {
    
    @State var isPresenting: Bool = false
    @State var isPresenting1: Bool = false
    @State var isPresenting2: Bool = false
    @State var isPresenting3: Bool = false
    var body: some View {
        NavigationView{
            ZStack{
                Image("Bg")
                            .resizable()
                            .edgesIgnoringSafeArea(.all)
                    
               
                ScrollView{
//                    ZStack{ Text("Fotocamera").font(.system(size: 36, design: .rounded))
//                            .fontWeight(.bold).foregroundColor(Color("text_color_1"))
//
//                        .edgesIgnoringSafeArea(.all)
//                    }   .offset(y: -70)
                    
                VStack{
                   
                    
                    
//                    NavigationLink(destination: StartView(classifier: ImageClassifier())) {
                        ZStack{
                            Image("Fruits")
                                    .resizable()
                                    .frame(width: 367, height: 174, alignment: .center)
                                    .onTapGesture {
                                        isPresenting = true
                                    }
                                    
                                    .overlay (
                                        //This HStack places the text in the middle with some padding
                                        HStack{ Text("Frutta").font(.system(size: 36, design: .rounded)).fontWeight(.semibold).foregroundColor(Color("text_color_1")).padding(.top, 102.0)
                                            
                                        }) .padding(.bottom, 20)
                                .padding(.top, 30)
                            
                        }.sheet(isPresented: $isPresenting){ StartView(classifier: ImageClassifier())

                        
                    }
                    
                    
                    
//                    NavigationLink(destination:  StartView1(classifier1: ImageClassifier1())) {
                        ZStack{
                            Image("Vegetables")
                                    .resizable()
                                    .frame(width: 367, height: 174, alignment: .center)
                                    .onTapGesture {
                                        isPresenting1 = true
                                    }
                                    
                                    .overlay (
                                        //This HStack places the text in the middle with some padding
                                        HStack{ Text("Verdura").font(.system(size: 36, design: .rounded)).fontWeight(.semibold).foregroundColor(Color("text_color_1")).padding(.top, 102.0)
                                            
                                        }) .padding(.bottom, 20)
                            
                        }.sheet(isPresented: $isPresenting1){ StartView1(classifier1: ImageClassifier1())
                }

                    
//                    NavigationLink(destination: StartView5(classifier5: ImageClassifier5())) {
                        ZStack{
                            Image("Stationary")
                                    .resizable()
                                    .frame(width: 367, height: 174, alignment: .center)
                                    .onTapGesture {
                                        isPresenting2 = true
                                    }
                                    
                                    .overlay (
                                        //This HStack places the text in the middle with some padding
                                        HStack{ Text("Scuola").font(.system(size: 36, design: .rounded)).fontWeight(.semibold).foregroundColor(Color("text_color_1")).padding(.top, 102.0)
                                            
                                        }) .padding(.bottom, 20)
                            
                        }.sheet(isPresented: $isPresenting2){ StartView5(classifier5: ImageClassifier5())

                  }
                    
//                    NavigationLink(destination: StartView6(classifier6: ImageClassifier6())) {
                        ZStack{
                            Image("Forniture")
                                    .resizable()
                                    .frame(width: 367, height: 174, alignment: .center)
                                    .onTapGesture {
                                        isPresenting3 = true
                                    }
                                    
                                    .overlay (
                                        //This HStack places the text in the middle with some padding
                                        HStack{ Text("Mobili").font(.system(size: 36, design: .rounded)).fontWeight(.semibold).foregroundColor(Color("text_color_1")).padding(.top, 102.0)
                                            
                                        }) .padding(.bottom, 70)
                            
                        }.sheet(isPresented: $isPresenting3){ StartView6(classifier6: ImageClassifier6())

                    }

                }
//                    padding(.bottom)
                }
                    
                
            }
                
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { // <2>
                        ToolbarItem(placement: .principal) { // <3>
                            VStack {
                                Text("Scegli una categoria").font(.system(size: 26, design: .rounded))
                                        .fontWeight(.bold).foregroundColor(Color("text_color_1"))
                                  
                                    .edgesIgnoringSafeArea(.all)
                            }
                        }
        }
        
    }
}
}
struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
