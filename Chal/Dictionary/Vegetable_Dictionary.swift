
//
//  Vegetable_Dictionary.swift
//  Chal
//
//  Created by Francesco Pirone on 09/03/22.
//


import SwiftUI

struct Vegetable_Dictionary: View {
    @State private var showSheetView = false
    @State private var showSheetView2 = false
    @State private var showSheetView3 = false
    @State private var showSheetView4 = false
    @State private var showSheetView5 = false
    @State private var showSheetView6 = false
    
    var body: some View {
    
        ZStack { Image("Bg_veg")
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
                            HStack{ Text("Verdura").font(.system(size: 39, design: .rounded)).fontWeight(.bold).foregroundColor(Color("text_color_1"))
                                
     
                        })
            }
            VStack {
                                HStack {
                                    Button( action: {
                                        showSheetView.toggle()
                                    }) {
                                        Image("Spinaci")
                                            .resizable()
                                            .frame(width: 150, height: 150)
                                            
                                        
                                    } .padding()
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                                   .fullScreenCover(isPresented: $showSheetView){ Spinaci_Dic_page()
                                    }
                                    
                                    Button( action: {
                                        showSheetView2.toggle()
                                    }) {
                                        Image("Pomodoro")
                                            .resizable()
                                            .frame(width: 150, height: 150)
                                            
                                    } .padding()
                                    
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                                   .fullScreenCover(isPresented: $showSheetView2){ Pomodoro_Dic_page()
                                    }
                                }
                HStack {
                    Button( action: {
                        showSheetView3.toggle()
                    }) {
                        Image("Carrot")
                            .resizable()
                            .frame(width: 150, height: 150)
                           
                        
                    }  .padding()
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                   .fullScreenCover(isPresented: $showSheetView3){ Carota_Dic_page()
                    }
                    
                    Button( action: {
                        showSheetView4.toggle()
                    }) {
                        Image("Melanzana")
                            .resizable()
                            .frame(width: 150, height: 150)
                            
                        
                    } .padding()
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                   .fullScreenCover(isPresented: $showSheetView4){ Melanzana_Dic_page()
                    }
                }
               
                HStack {
                    Button( action: {
                        showSheetView5.toggle()
                    }) {
                        Image("Radish")
                            .resizable()
                            .frame(width: 150, height: 150)
                            
                        
                    } .padding()
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                   .fullScreenCover(isPresented: $showSheetView5){ Ravanello_Dic_page()
                    }
                    
                    
                    Button( action: {
                        showSheetView6.toggle()
                    }) {
                        Image("Patata")
                            .resizable()
                            .frame(width: 150, height: 150)
                            
                        
                    } .padding()
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                   .fullScreenCover(isPresented: $showSheetView6){ Patata_Dic_page()
                    }
                }
                
            
         }
            } .padding(.bottom, 40)
    }
    }
}

struct Vegetavle_Dictionary_Previews: PreviewProvider {
    static var previews: some View {
        Vegetable_Dictionary()
    }
}
