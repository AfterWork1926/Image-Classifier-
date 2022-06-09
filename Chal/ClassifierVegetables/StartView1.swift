//
//  StartView1.swift
//  Chal
//
//  Created by Roberto Farella on 28/02/22.
//
import SwiftUI

struct StartView1: View {
    @State var isPresenting: Bool = false
    @State var uiImage: UIImage?
    @State var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    @ObservedObject var classifier1: ImageClassifier1
    
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
                        classifier1.detect1(uiImage: uiImage!)
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
                    if let imageClass = classifier1.imageClass {
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
            ImagePicker1(uiImage2: $uiImage, isPresenting1:  $isPresenting, sourceType1: $sourceType)
                .onDisappear{
                    if uiImage != nil {
                        classifier1.detect1(uiImage: uiImage!)
                    }
                }
            
        }
        
        
        
        
        
        
        .padding()
    }
}

struct StartView1_Previews: PreviewProvider {
    static var previews: some View {
        StartView1(classifier1: ImageClassifier1())
    }
}

