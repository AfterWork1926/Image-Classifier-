//
//  Welcome.swift
//  Chal
//
//  Created by Roberto Farella on 22/02/22.
//

import SwiftUI

struct Welcome: View {
   
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
            ZStack{
                
                TabBar()
                
                }
                }
                
                
                
            }
        
        

    
    struct Welcome_Previews: PreviewProvider {
        static var previews: some View {
            Welcome()
        }
    }
