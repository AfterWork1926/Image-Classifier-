//
//  Mobili_Dictionary.swift
//  Chal
//
//  Created by Francesco Pirone on 09/03/22.
//

import SwiftUI

struct Mobili_Dictionary: View {
    @State private var showSheetView = false
    @State private var showSheetView2 = false
    @State private var showSheetView3 = false
    @State private var showSheetView4 = false
    @State private var showSheetView5 = false
    @State private var showSheetView6 = false
    
    var body: some View {
    
        ZStack { Image("bg_mobili")
                   .resizable()
                    .edgesIgnoringSafeArea(.all)
            VStack {
            ZStack{
                Rectangle()
               .frame(width: 271, height: 99, alignment: .center)
               .foregroundColor(Color.white)
               .cornerRadius(30)
                
                        .overlay (
                            //This HStack places the text in the middle with some padding
                            HStack{ Text("Mobili").font(.system(size: 39, design: .rounded)).fontWeight(.bold).foregroundColor(Color("text_color_1"))
                                
     
                        })
            }
            VStack {
                                HStack {
                                    Button( action: {
                                        showSheetView.toggle()
                                    }) {
                                        Image("Televisione")
                                            .resizable()
                                            .frame(width: 150, height: 150)
                                            
                                        
                                    } .padding()
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                                   .fullScreenCover(isPresented: $showSheetView){  televisione_Dic_page()

                                    }
                                    
                                    Button( action: {
                                        showSheetView2.toggle()
                                    }) {
                                        Image("Tavolo")
                                            .resizable()
                                            .frame(width: 150, height: 150)
                                            
                                        
                                    } .padding()
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                                   .fullScreenCover(isPresented: $showSheetView2){ Tavolo_Dic_page()
                                    }
                                }
                HStack {
                    Button( action: {
                        showSheetView3.toggle()
                    }) {
                        Image("Sedia")
                            .resizable()
                            .frame(width: 150, height: 150)
                            
                        
                    } .padding()
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                   .fullScreenCover(isPresented: $showSheetView3){ Sedia_Dic_page()
                    }
                    
                    Button( action: {
                        showSheetView4.toggle()
                    }) {
                        Image("Divano")
                            .resizable()
                            .frame(width: 150, height: 150)
                            
                        
                    } .padding()
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                   .fullScreenCover(isPresented: $showSheetView4){ Divano_Dic_page()
                    }
                }
               
                HStack {
                    Button( action: {
                        showSheetView5.toggle()
                    }) {
                        Image("Libreria")
                            .resizable()
                            .frame(width: 150, height: 150)
                           
                        
                    }  .padding()
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                   .fullScreenCover(isPresented: $showSheetView5){ Libreria_Dic_page()
                    }
                    
                    
                    Button( action: {
                        showSheetView6.toggle()
                    }) {
                        Image("Lampada")
                            .resizable()
                            .frame(width: 150, height: 150)
                            
                        
                    } .padding()
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                   .fullScreenCover(isPresented: $showSheetView6){ Lampada_Dic_page()
                    }
                }
                
            
         }
            } .padding(.bottom, 40)
    }
    }
}

struct Mobili_Dictionary_Previews: PreviewProvider {
    static var previews: some View {
        Mobili_Dictionary()
    }
}
 
