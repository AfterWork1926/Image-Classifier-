//
//  TabBar.swift
//  Chal
//
//  Created by alberto on 03/03/22.
//

import SwiftUI



struct TabBar: View {
    
    
    @State var current = "SecondView"
    
    var body: some View {
        
        GeometryReader { geometry in
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)){
            
            
            TabView(selection: $current){
                
                SecondView()
                    .tag("SecondView")
                
                PreWhosThat()
                    .tag("PreWhosThat")
                
                DictionaryView()
                    .tag("DictionaryView")
                
                
                    
                
            }
            
            HStack(spacing: 0){
                
                TabButton(title: "SecondView", image: "camera_icon", name: "Snap",  selected: $current)
                Spacer(minLength: 0)
                
                TabButton3(title: "PreWhosThat", image: "icon-whosthat", name: "Indovinelli",  selected: $current)
                Spacer(minLength: 0)
                
                TabButton2(title: "DictionaryView", image: "dictionary_icon", name:"Dizionario", selected: $current)
                
                

                
                
            }   .padding(.horizontal, 50)
            .frame(width: geometry.size.width, height: geometry.size.height/9)
                .background(Color.white)
                


            
            
        }
    }.edgesIgnoringSafeArea(.bottom)
    }
    
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
