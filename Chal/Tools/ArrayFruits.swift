//
//  ArrayFruits.swift
//  Chal
//
//  Created by Francesco Pirone on 24/02/22.
//

import SwiftUI

    
    struct Boxe: Identifiable {
        var id: Int
        let title, imageUrl: String
        
    }


    struct ArrayFruits: View {
        
        let boxes:[Boxe] = [
            Boxe(id:0, title:"Brinjal", imageUrl:"6"),
            Boxe(id:1, title:"Carrot", imageUrl:"7"),
            Boxe(id:2, title:"Potato", imageUrl:"8"),
            Boxe(id:3, title:"Radish", imageUrl:"9"),
            Boxe(id:4, title:"Spinach", imageUrl:"10"),
            Boxe(id:5, title:"Tomato", imageUrl:"11"),
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
                                StartView1(classifier1: ImageClassifier1())
                            } label: {
                                BoxeView(box: box)
                            }
                            
                        }
                        
                        
                    }
                }
                
                
            }
        }
        }
        
        struct BoxeView: View{
            
            let box: Boxe
            
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

    struct ArrayFruits_Previews: PreviewProvider {
        static var previews: some View {
            ArrayFruits()
        }
    }

