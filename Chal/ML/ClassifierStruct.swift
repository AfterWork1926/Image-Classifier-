struct ContentView: View {
    @State var isPresenting: Bool = false
    @State var uiImage: UIImage?
    
    var classifier = Classifier()
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "photo")
                    .onTapGesture {
                        isPresenting = true
                    }
                
                Image(systemName: "camera")
            }
            .font(.largeTitle)
            .foregroundColor(.blue)
            
            Rectangle()
                .strokeBorder()
                .foregroundColor(.yellow)
                .overlay(
                    Group {
                        if uiImage != nil {
                            Image(uiImage: uiImage!)
                                .resizable()
                                .scaledToFit()
                        }
                    }
                )
            
            Button(action: {
                if uiImage != nil {
                    guard let ciImage = CIImage(image: uiImage!) else {
                        print("cannot convert uiimage to ciimage")
                        return
                    }
                    classifier.detect(ciImage: ciImage)
                }
            }) {
                Image(systemName: "bolt.fill")
                    .foregroundColor(.red)
                    .font(.title)
            }
            
            
            
            
        }
        .sheet(isPresented: $isPresenting){
            ImagePicker(uiImage: $uiImage, isPresenting:  $isPresenting)
            
        }
        
        
        .padding()
    }
}
