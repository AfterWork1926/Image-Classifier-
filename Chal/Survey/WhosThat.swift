//
//  WhosThat.swift
//  prova
//
//  Created by alberto on 09/03/22.
//


import SwiftUI


struct WhosThat: View {
    @State var isPresenting: Bool = false
    @State var uiImage: UIImage?
    @State private var isRotated = false
    @State var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @Environment(\.presentationMode) var presentationMode
    
   @ObservedObject var classifier7: ImageClassifier7
    
    var animation: Animation {
        Animation.linear
            .repeatForever(autoreverses: false).speed(0.05)
    }
    
    
    
    var body: some View {
        
            
           ZStack {
                 WhosThat_Bg()
              
               VStack {
                       Rectangle()
                           .strokeBorder()
                           .foregroundColor(.clear)
                           .overlay(
                            Group{
                               if uiImage != nil {
                                   
                                   Image(uiImage: uiImage!)
                                       .resizable()
                                       .scaledToFill()
                                       .frame(width: UIScreen.main.bounds.width*0.9, height: 450)
                                       .cornerRadius(30)
                                       .offset(y: -100)
                               }else {
                                   
                                  VStack {
                                       Image("baloonwhos")
                                           .resizable()
                                      .frame(width: 328, height: 262)
                                               .overlay (
                                                   //This HStack places the text in the middle with some padding
                                                   VStack{ Text("Sono arancione e succosa.").font(.system(size: 33, design: .rounded)).fontWeight(.bold).foregroundColor(Color("text_color_1"))
                                                           .multilineTextAlignment(.center)
                                                       Text("La mia spremuta è strepitosa.").font(.system(size: 33, design: .rounded)).fontWeight(.bold).foregroundColor(Color("text_color_1"))
                                                               .multilineTextAlignment(.center)
                                                       
                                                       Text("Cosa sono?").font(.system(size: 33, design: .rounded)).fontWeight(.bold).foregroundColor(Color("text_color_1"))
                                                               .multilineTextAlignment(.center)
                                                      
                                                   } .padding(.bottom, 20)
                                                    
                                               )
                                          .offset(y:-150)
                                       Image("aranciawhos")
                                       .resizable()
                                       .scaledToFill()
                                       .frame(width: UIScreen.main.bounds.width*0.9, height:30 )
                                       .padding(.leading, -20)
                                       
                                   
                                       
                                          
                                  } .padding(.top, -40)
                               }
                                Button(action: {
                                    if uiImage != nil {
                                        classifier7.detect7(uiImage: uiImage!)
                                    }
                                }) {
                                    
                                Image("camera_button_whos")
                                        .resizable()
                                        .frame(width: 70, height: 74)
                                        .scaledToFit()

                                        .onTapGesture {
                                            isPresenting = true
                                            sourceType = .camera
                                }
                          
                        }                                                    .padding(.top, 30)
                               .offset(y: 300)
                                
                                         Group{
                                               if let imageClass = classifier7.imageClass {
                                                   HStack{
                           //                            Text("Image:")
                           //                                .font(.caption)
                                                       Text(imageClass)
                                                           .font(.system(size: 33, design: .rounded))
                                                           .fontWeight(.bold)

                                                           .foregroundColor(Color.red)
                                                           .multilineTextAlignment(.center)
                                                       
                                                   } .offset(y: 200)
                                               } else {
                                                   HStack{
                                                       Text("")
                                                           .font(.caption)
                                                   }
                                               }
                                           }
                                         .font(.subheadline)
                                         .padding()
                                       
                                       
                                       
                                       
                                   
                               

                           })
                          
  
           }
            
    

}
           .fullScreenCover(isPresented: $isPresenting){
               ImagePicker7(uiImage7: $uiImage, isPresenting7:  $isPresenting, sourceType7: $sourceType)
                   .onDisappear{
                       if uiImage != nil {
                           classifier7.detect7(uiImage: uiImage!)
                       }
                   }
               
           }

           .padding()
    }
}
struct WhosThat_Previews: PreviewProvider {
    static var previews: some View {
        WhosThat(classifier7: ImageClassifier7())
    }
}
