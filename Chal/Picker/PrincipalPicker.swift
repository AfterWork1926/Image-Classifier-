//
//  PrincipalPicker.swift
//  Chal
//
//  Created by Roberto Farella on 23/02/22.
//
import SwiftUI

struct PrincipalPicker: View {
    @State private var prediction: [String: Double]? = nil
    @EnvironmentObject var vm: ViewModel
    var body: some View {
            VStack {
                if let image = vm.image {
                    ZoomableScrollView {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .frame(minWidth: 0, maxWidth: .infinity)
                    }
                    .onAppear {
                        if let image = image.cgImage {
                            self.prediction = ImageReader.shared.readImage(cgImage: image)
                        }
                        
                    }
                }
                
                // MARK: - OUTPUT
                
                if let prediction = prediction {
                    
                    if prediction.sorted(by: >).count > 0 {
                        VStack {
                            Text(prediction.sorted(by: >)[2].key)
                                .bold()
                        }
                    }
                }
                
                Spacer()
                
                
                    Button {
                        vm.source = .camera
                        vm.showPhotoPicker()
                    } label: {
                        Image(systemName: "camera.circle")
                        
                    }.padding()
                    .font(.system(size: 35))
                    .accentColor(.black)
                
                
            }
            .fullScreenCover(isPresented: $vm.showPicker) {
                ImagePicker(sourceType: vm.source == .library ? .photoLibrary : .camera, selectedImage: $vm.image)
                    .ignoresSafeArea()
                    
            }
            .navigationTitle("My Images")
        
    }
}

struct PrincipalPicker_Previews: PreviewProvider {
    static var previews: some View {
        PrincipalPicker()
            .environmentObject(ViewModel())
    }
}

