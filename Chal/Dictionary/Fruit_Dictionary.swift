import SwiftUI

struct Fruit_Dictionary: View {
    @State private var showSheetView = false
    @State private var showSheetView2 = false
    @State private var showSheetView3 = false
    @State private var showSheetView4 = false
    @State private var showSheetView5 = false
    @State private var showSheetView6 = false
    
    var body: some View {
    
        ZStack { Image("Prima")
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
                            HStack{ Text("Frutta").font(.system(size: 39, design: .rounded)).fontWeight(.bold).foregroundColor(Color("text_color_1"))
                                
     
                        })
            }
            VStack {
                                HStack {
                                    Button( action: {
                                        showSheetView.toggle()
                                    }) {
                                        Image("Apple")
                                            .resizable()
                                            .frame(width: 150, height: 150)
                                            .padding()
                                        
                                    }
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                                   .fullScreenCover(isPresented: $showSheetView){ Apple_Dic_page()
                                    }
                                    
                                    Button( action: {
                                        showSheetView2.toggle()
                                    }) {
                                        Image("Pear")
                                            .resizable()
                                            .frame(width: 150, height: 150)
                                            .padding()
                                        
                                    }
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                                   .fullScreenCover(isPresented: $showSheetView2){ Pear_Dic_page()
                                    }
                                }
                HStack {
                    Button( action: {
                        showSheetView3.toggle()
                    }) {
                        Image("Banana")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .padding()
                        
                    }
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                   .fullScreenCover(isPresented: $showSheetView3){ Banana_Dic_page()
                    }
                    
                    Button( action: {
                        showSheetView4.toggle()
                    }) {
                        Image("Kiwi")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .padding()
                        
                    }
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                   .fullScreenCover(isPresented: $showSheetView4){ Kiwi_Dic_page()
                    }
                }
               
                HStack {
                    Button( action: {
                        showSheetView5.toggle()
                    }) {
                        Image("Grape")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .padding()
                        
                    }
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                   .fullScreenCover(isPresented: $showSheetView5){ Grape_Dic_page()
                    }
                    
                    
                    Button( action: {
                        showSheetView6.toggle()
                    }) {
                        Image("Orange")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .padding()
                        
                    }
//                                    .sheet(isPresented: $showSheetView){ Orange_Dic_page()
                   .fullScreenCover(isPresented: $showSheetView6){ Orange_Dic_page()
                    }
                }
                
            
         }
            } .padding(.bottom, 40)
    }
    }
}

struct Fruit_Dictionary_Previews: PreviewProvider {
    static var previews: some View {
        Fruit_Dictionary()
    }
}
