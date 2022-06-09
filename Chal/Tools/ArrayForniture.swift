//
//  ArrayForniture.swift
//  Chal
//
//  Created by Francesco Pirone on 24/02/22.
//

import SwiftUI


struct Boxeee: Identifiable {
    var id: Int
    let title, imageUrl: String
    
}


struct ArrayForniture: View {
    
    let boxes:[Boxeee] = [
        Boxeee(id:0, title:"Sofà", imageUrl:"18"),
        Boxeee(id:1, title:"Bookshelf", imageUrl:"19"),
        Boxeee(id:2, title:"Chair", imageUrl:"20"),
        Boxeee(id:3, title:"Coffee Table ", imageUrl:"21"),
        Boxeee(id:4, title:"Dining Table", imageUrl:"22"),
        Boxeee(id:5, title:"TV", imageUrl:"23"),
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
                            StartView6(classifier6: ImageClassifier6())
                        } label: {
                            BoxeeeView(box: box)
                        }
                        
                    }
                    
                    
                }
            }
            
            
        }
    }
}
    
    struct BoxeeeView: View{
        
        let box: Boxeee
        
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

struct ArrayForniture_Previews: PreviewProvider {
    static var previews: some View {
        ArrayForniture()
    }
}
