//
//  ContentView.swift
//  SeeFood
//
//  Created by Leon Wei on 5/31/21.
//

import SwiftUI

struct StartView6: View {
    @State var isPresenting: Bool = false
    @State var uiImage: UIImage?
    @State var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    @ObservedObject var classifier6: ImageClassifier6
    
    var body: some View {
        ZStack{
            Image("Bg")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
        VStack{
            Rectangle()
                .strokeBorder()
                .foregroundColor(.clear)
                .overlay(
                    Group {
                        if uiImage != nil {
                            Image(uiImage: uiImage!)
                                .resizable()
                                .scaledToFill()
                                .frame(width: UIScreen.main.bounds.width*0.9, height: 450)
                                .cornerRadius(30)
                        }else {
                            VStack { Image("pic")
                                .resizable()
                                .scaledToFill()
                                .frame(width: UIScreen.main.bounds.width*0.9, height:30 )
                                ZStack { Text("Mi racommando! \n")
                                    .font(.system(size: 33, design: .rounded))
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("text_color_1"))
                                    + Text ("Centra per bene l'oggetto!")
                                    .font(.system(size: 33, design: .rounded))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("text_color_1"))
                                    } .edgesIgnoringSafeArea(.all)
                                    .offset(y: 220)
                                    .multilineTextAlignment(.center)
                            }
                        }

                    }
                )
            
            
            VStack{
                Button(action: {
                    if uiImage != nil {
                        classifier6.detect6(uiImage: uiImage!)
                    }
                }) {
                    Image("bottonefoto")
                        .resizable()
                        .frame(width: 70, height: 74)
                        .scaledToFit()
                        .onTapGesture {
                            isPresenting = true
                            sourceType = .camera
                }
                
                }
                Group {
                    if let imageClass = classifier6.imageClass {
                        HStack{
//                            Text("Image:")
//                                .font(.caption)
                            Text(imageClass)
                                .font(.system(size: 33, design: .rounded))
                                .fontWeight(.bold)

                                .foregroundColor(Color.red)
                                .multilineTextAlignment(.center)
                        }
                    } else {
                        HStack{
                            Text("")
                                .font(.caption)
                        }
                    }
                }
                .font(.subheadline)
                .padding()
                
            }
        }
        }
        .fullScreenCover(isPresented: $isPresenting){
            ImagePicker6(uiImage6: $uiImage, isPresenting6:  $isPresenting, sourceType6: $sourceType)
                .onDisappear{
                    if uiImage != nil {
                        classifier6.detect6(uiImage: uiImage!)
                    }
                }
            
        }
        
        
        
        
        
        
        .padding()
    }
}

struct StartView6_Previews: PreviewProvider {
    static var previews: some View {
        StartView6(classifier6: ImageClassifier6())
    }
}
