//
//  ImagePicker.swift
//  SeeFood
//
//  Created by Leon Wei on 5/31/21.
//

import SwiftUI
import UIKit


struct ImagePicker5: UIViewControllerRepresentable {
    
    @Binding var uiImage5: UIImage?
    @Binding var isPresenting5: Bool
    @Binding var sourceType5: UIImagePickerController.SourceType
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker5 = UIImagePickerController()
        imagePicker5.sourceType = sourceType5
        imagePicker5.delegate = context.coordinator
        return imagePicker5
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
    }
    
    typealias UIViewControllerType = UIImagePickerController
        
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        let parent5: ImagePicker5
                
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            parent5.uiImage5 = info[.originalImage] as? UIImage
            parent5.isPresenting5 = false
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent5.isPresenting5 = false
        }
        
        init(_ imagePicker: ImagePicker5) {
            self.parent5 = imagePicker
        }
        
    }
    
    
}
