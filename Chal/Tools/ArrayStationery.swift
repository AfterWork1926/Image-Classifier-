//
//  ArrayStationery.swift
//  Chal
//
//  Created by Francesco Pirone on 24/02/22.
//

import SwiftUI


struct Boxee: Identifiable {
    var id: Int
    let title, imageUrl: String
    
}


struct ArrayStationery: View {
    
    let boxes:[Boxee] = [
        Boxee(id:0, title:"Pencil Case", imageUrl:"12"),
        Boxee(id:1, title:"Eraser", imageUrl:"13"),
        Boxee(id:2, title:"Pencil", imageUrl:"14"),
        Boxee(id:3, title:"Pen", imageUrl:"15"),
        Boxee(id:4, title:"Notebook", imageUrl:"16"),
        Boxee(id:5, title:"Backpack", imageUrl:"17"),
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
                          StartView5(classifier5: ImageClassifier5())
                        } label: {
                            BoxeeView(box: box)
                        }
                        
                    }
                    
                    
                }
            }
            
            
        }
    }
    
    }
    struct BoxeeView: View{
        
        let box: Boxee
        
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

struct ArrayStationery_Previews: PreviewProvider {
    static var previews: some View {
        ArrayStationery()
    }
}
