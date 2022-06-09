//
//  ArrayVegetables.swift
//  Chal
//
//  Created by Roberto Farella on 22/02/22.
//

import SwiftUI


struct Box: Identifiable {
    var id: Int
    let title, imageUrl: String
    
}


struct ArrayVegetables: View {
    
    let boxes:[Box] = [
        Box(id:0, title:"Pera", imageUrl:"0"),
        Box(id:1, title:"Mela", imageUrl:"1"),
        Box(id:2, title:"Banana", imageUrl:"2"),
        Box(id:3, title:"Kiwi", imageUrl:"3"),
        Box(id:4, title:"Uva", imageUrl:"4"),
        Box(id:5, title:"Arancia", imageUrl:"5"),
    ]
    
    var body: some View {
        ZStack{
            Image("Bg")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
        VStack{
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                    ForEach(boxes) { box in
                        
                        NavigationLink {
                            StartView(classifier: ImageClassifier())
                        } label: {
                            BoxView(box: box)
                        }
                        
                    }
                    
                    
                }
            }
            
            
        }
    }
    
    }
    struct BoxView: View{
        
        let box: Box
        
        var body: some View {
            VStack{
                Image(box.imageUrl)
                    .resizable()
                    .frame(width: 120, height: 120)
                    .cornerRadius(12)
                Text(box.title)
                    .font(.subheadline)
                    .fontWeight(.bold)
            }
            
        }
    }
}

struct ArrayVegetables_Previews: PreviewProvider {
    static var previews: some View {
        ArrayVegetables()
    }
}
