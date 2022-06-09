//
//  WhosThat_Bg.swift
//  prova
//
//  Created by alberto on 09/03/22.
//

import SwiftUI


struct WhosThat_Bg: View {
    
    @State private var isRotated = false
    
    var animation: Animation {
        Animation.linear
            .repeatForever(autoreverses: false).speed(0.05)
    }
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        
        ZStack {
            
            
            
            Image("Prima")
                .resizable()
                .scaledToFit()
            
            
            Image("effettobg")
                .rotationEffect(Angle.degrees(isRotated ? 360 : 0))
                .animation(animation)
                .onAppear(perform: {
                    isRotated.toggle()
                })
        }
        .edgesIgnoringSafeArea(.all)

        
        
    }
    
}


struct WhosThat_Bg_Previews: PreviewProvider {
    static var previews: some View {
        WhosThat_Bg()
    }
}

