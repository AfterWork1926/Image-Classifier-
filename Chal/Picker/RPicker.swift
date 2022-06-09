//
//  hola.swift
//  Chal
//
//  Created by Roberto Farella on 23/02/22.
//

import SwiftUI

struct RPicker: View {
    
    
    
    @StateObject var vm = ViewModel()
    
    var body: some View {
        PrincipalPicker()
            .environmentObject(vm)
            .onAppear {
                UserDefaults.standard.setValue(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
            
    }
}
}
struct RPicker_Previews: PreviewProvider {
    static var previews: some View {
        RPicker()
    }
}
