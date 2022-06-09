//
//  PreWhosThat.swift
//  Chal
//
//  Created by Roberto Farella on 09/03/22.
//

import Foundation
import UIKit
import SwiftUI

struct PreWhosThat: View {
    
    @State var isPresenting7: Bool = false
//    @State var isPresenting1: Bool = false
//    @State var isPresenting2: Bool = false
//    @State var isPresenting3: Bool = false
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
                    
                    VStack{ Text("Gioca con gli").font(.system(size: 38, design: .rounded))
                                              .fontWeight(.semibold).foregroundColor(Color("text_color_1"))
                   
                                          .edgesIgnoringSafeArea(.all)
                        
                        Text("Indovinelli!").font(.system(size: 43, design: .rounded))
                                                  .fontWeight(.bold).foregroundColor(Color("text_color_1"))
                       
                                              .edgesIgnoringSafeArea(.all)
                                              .offset(y: -10)
                    } .offset(y: -30)
                    
                VStack{
                   
                    
                    

//                        ZStack{
//                            Image("Fruits")
//                                    .resizable()
//                                    .frame(width: 367, height: 174, alignment: .center)
//                                    .onTapGesture {
//                                        isPresenting = true
//                                    }
//
//                                    .overlay (
//                                        //This HStack places the text in the middle with some padding
//                                        HStack{ Text("Frutta").font(.system(size: 36, design: .rounded)).fontWeight(.semibold).foregroundColor(Color("text_color_1")).padding(.top, 102.0)
//
//                                        }) .padding(.bottom, 20)
//
//                        }.sheet(isPresented: $isPresenting){ StartView(classifier: ImageClassifier())
//
//
//                    }
                    
                    
                    
//                    NavigationLink(destination:  StartView1(classifier1: ImageClassifier1())) {
                Spacer()
                    
                        ZStack{
                            Image("Avventura_whos")
                                    .resizable()
                                    .frame(width: 367, height: 174, alignment: .center)
                                    .onTapGesture {
                                        isPresenting7 = true
                                    }
                                    
                                    .overlay (
                                        //This HStack places the text in the middle with some padding
                                        HStack{ Text("Avventura").font(.system(size: 36, design: .rounded)).fontWeight(.semibold).foregroundColor(Color("text_color_1")).padding(.top, 102.0)
                                            
                                        }) .padding(.bottom, 30)
                            
                        }
                            
                            ZStack{
                                Image("Casuale_whos")
                                        .resizable()
                                        .frame(width: 367, height: 174, alignment: .center)
                                        .onTapGesture {
                                            isPresenting7 = true
                                        }
                                        
                                        .overlay (
                                            //This HStack places the text in the middle with some padding
                                            HStack{ Text("Casuale").font(.system(size: 36, design: .rounded)).fontWeight(.semibold).foregroundColor(Color("text_color_1")).padding(.top, 102.0)
                                                
                                            }) .padding(.bottom, 20)
                                
                            }.sheet(isPresented: $isPresenting7){ WhosThat(classifier7: ImageClassifier7())
                }

                    
                       

                }

                }
                    
                
            }
                

        
    }
}
}
struct PreWhosThat_Previews: PreviewProvider {
    static var previews: some View {
        PreWhosThat()
    }
}
