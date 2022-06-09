//
//  Scuola_Dictionary.swift
//  Chal
//
//  Created by Francesco Pirone on 09/03/22.
//


import SwiftUI

struct Scuola_Dictionary: View {
    @State private var showSheetView = false
    @State private var showSheetView2 = false
    @State private var showSheetView3 = false
    @State private var showSheetView4 = false
    @State private var showSheetView5 = false
    @State private var showSheetView6 = false
    
    var body: some View {
    
        ZStack { Image("bg_scuola")
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
                            HStack{ Text("Scuola").font(.system(size: 39, design: .rounded)).fontWeight(.bold).foregroundColor(Color("text_color_1"))
                                
     
                        })
            }
            VStack {
                                HStack {
                                    Button( action: {
                                        showSheetView.toggle()
                                    }) {
                                        Image("Penna")
                                            .resizable()
                                            .frame(width: 150, height: 150)
                                           
                                        
                                    } .padding()
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                                   .fullScreenCover(isPresented: $showSheetView){ Penna_Dic_page()
                                    }
                                    
                                    Button( action: {
                                        showSheetView2.toggle()
                                    }) {
                                        Image("Matita")
                                            .resizable()
                                            .frame(width: 150, height: 150)
                                            
                                        
                                    } .padding()
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                                   .fullScreenCover(isPresented: $showSheetView2){ Matita_Dic_page()
                                    }
                                }
                HStack {
                    Button( action: {
                        showSheetView3.toggle()
                    }) {
                        Image("Gommadacancellare")
                            .resizable()
                            .frame(width: 150, height: 150)
                            
                        
                    } .padding()
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                   .fullScreenCover(isPresented: $showSheetView3){ Gomma_Dic_page()
                    }
                    
                    Button( action: {
                        showSheetView4.toggle()
                    }) {
                        Image("Zaino")
                            .resizable()
                            .frame(width: 150, height: 150)
                            
                        
                    } .padding()
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                   .fullScreenCover(isPresented: $showSheetView4){ Zaino_Dic_page()
                    }
                }
               
                HStack {
                    Button( action: {
                        showSheetView5.toggle()
                    }) {
                        Image("Quaderno")
                            .resizable()
                            .frame(width: 150, height: 150)
                           
                        
                    }  .padding()
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                   .fullScreenCover(isPresented: $showSheetView5){ Quaderno_Dic_page()
                    }
                    
                    
                    Button( action: {
                        showSheetView6.toggle()
                    }) {
                        Image("Astuccio")
                            .resizable()
                            .frame(width: 150, height: 150)
                            
                        
                    } .padding()
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                   .fullScreenCover(isPresented: $showSheetView6){ Astuccio_Dic_page()
                    }
                }
                
            
         }
            } .padding(.bottom, 40)
    }
    }
}

struct Scuola_Dictionary_Previews: PreviewProvider {
    static var previews: some View {
        Scuola_Dictionary()
    }
}
