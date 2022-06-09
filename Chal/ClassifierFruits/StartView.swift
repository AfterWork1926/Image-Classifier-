//
//  ContentView.swift
//  SeeFood
//
//  Created by Leon Wei on 5/31/21.
//

import SwiftUI

struct StartView: View {
    @State var isPresenting: Bool = false
    @State var uiImage: UIImage?
    @State var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    @ObservedObject var classifier: ImageClassifier
    
    var body: some View {
        
        ZStack{
            Image("Bg")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
            
        VStack{
//            HStack{
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
                        classifier.detect(uiImage: uiImage!)
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
                    if let imageClass = classifier.imageClass {
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
            ImagePicker(uiImage: $uiImage, isPresenting:  $isPresenting, sourceType: $sourceType)
                .onDisappear{
                    if uiImage != nil {
                        classifier.detect(uiImage: uiImage!)
                    }
                }
            
        }
        .padding()
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView(classifier: ImageClassifier())
    }
}
