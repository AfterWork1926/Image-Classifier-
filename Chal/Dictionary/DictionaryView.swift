//
//  DictionaryView.swift
//  Chal
//
//  Created by Roberto Farella on 07/03/22.
//

import SwiftUI

struct DictionaryView: View {
    @State var backgroundOffset: CGFloat = 0
     
    var body: some View{
    
    GeometryReader{ g in
        
        HStack (spacing: 0){
            
            Fruit_Dictionary()
                .frame(width:g.size.width, height:g.size.height)
            Vegetable_Dictionary()
                .frame(width:g.size.width, height:g.size.height)
            Scuola_Dictionary()
                .frame(width:g.size.width, height:g.size.height)
            Mobili_Dictionary()
                .frame(width:g.size.width, height:g.size.height)

        }
        .offset(x: -(self.backgroundOffset * g.size.width))
        .animation(Animation.default)
        
        VStack (alignment: .center){
            
            
            HStack (spacing: 10) {
                
                Circle()
                    .fill(Color("Color_page_fruit"))
                    .frame(width: self.backgroundOffset == 0 ? 30 : 20, height: self.backgroundOffset == 0 ? 30 : 20)
                    .overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 4)
                    )
                
                
                Circle()
                    .fill(Color("Color_page_veg"))
                    .frame(width: self.backgroundOffset == 1 ? 30 : 20, height: self.backgroundOffset == 1 ? 30 : 20)
                    .overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 4)
                    )
                
                Circle()
                    .fill(Color("Color_page_scuola"))
                    .frame(width: self.backgroundOffset == 2 ? 30 : 20, height: self.backgroundOffset == 2 ? 30 : 20)
                    .overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 4)
                    )
                
                Circle()
                    .fill(Color("Color_page_mobili"))
                    .frame(width: self.backgroundOffset == 3 ? 30 : 20, height: self.backgroundOffset == 3 ? 30 : 20)
                    .overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 4)
                    )
            }
            .animation(Animation.default)

        } .padding([.leading, .trailing], 150)
        
    }
    .gesture (
        
        DragGesture()
            .onEnded({ value in
                
                if value.translation.width > 10 {
                    
                    if self.backgroundOffset > 0 {
                        self.backgroundOffset -= 1
                    }
                }else if value.translation.width < -10 {
                    if self.backgroundOffset < 3 {
                    self.backgroundOffset += 1
                    }
                    }
            })
            )
    
    
    
}
}

struct DictionaryView_Previews: PreviewProvider {
    static var previews: some View {
        DictionaryView()
    }
}

