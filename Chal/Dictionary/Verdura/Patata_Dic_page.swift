//
//  Patata_Dic_page.swift
//  Chal
//
//  Created by Francesco Pirone on 09/03/22.
//

import SwiftUI
import AVFoundation
import AVFAudio
import MediaPlayer
//import UserNotifications



struct Patata_Dic_page: View {
    

    @Environment(\.presentationMode) var presentationMode
//    @State var buttonIsPressed = false
    
    var body: some View {
        
            
            VStack {
                
                HStack {
                    Button( action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                    Image("Close_Button")
                        .resizable()
                        .frame(width: 50, height: 50)
                   })
                    Spacer()
                }.padding([.top, .leading], 23)
                  
                Spacer()
                
                ZStack{
                    Image("Baloon")
                        .resizable()
                   .frame(width: 328, height: 174)
                            .overlay (
                                //This HStack places the text in the middle with some padding
                                VStack{ Text("Potato").font(.system(size: 45, design: .rounded)).fontWeight(.bold).foregroundColor(Color("text_color_1"))
                                    Text("Patata").font(.system(size: 26, design: .rounded)).fontWeight(.semibold).foregroundColor(Color("text_color_2"))
                                }.padding(.bottom, 15)
                            )
                }
                VStack {
                       
                    Image("Potato_illustr")
                        .resizable()
                        
                        .scaledToFit()
                   .frame(width: 250, height: 250)
                   .padding(30)
                    
                    Button( action: {
                            playSound("potato.mp3")
                    }) {
                        Image("Audio_button")
                            .resizable()
                            .frame(width: 94, height: 98)
                    
                  }
                    
                    Text("Ascolta la pronuncia!").font(.system(size: 26, design: .rounded)).fontWeight(.bold).foregroundColor(Color.white)
                    }
                Spacer()
            }.padding()
            .ignoresSafeArea()
            .background(
                
                
            Image("Bg_veg")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
            )
            
    }
}


struct Patata_Dic_page_Previews: PreviewProvider {
    static var previews: some View {
        Patata_Dic_page()
    }
}


