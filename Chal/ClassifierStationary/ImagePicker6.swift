//
//  ImagePicker.swift
//  SeeFood
//
//  Created by Leon Wei on 5/31/21.
//

import SwiftUI
import UIKit


struct ImagePicker6: UIViewControllerRepresentable {
    
    @Binding var uiImage6: UIImage?
    @Binding var isPresenting6: Bool
    @Binding var sourceType6: UIImagePickerController.SourceType
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker6 = UIImagePickerController()
        imagePicker6.sourceType = sourceType6
        imagePicker6.delegate = context.coordinator
        return imagePicker6
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
    }
    
    typealias UIViewControllerType = UIImagePickerController
        
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        let parent6: ImagePicker6
                
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            parent6.uiImage6 = info[.originalImage] as? UIImage
            parent6.isPresenting6 = false
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent6.isPresenting6 = false
        }
        
        init(_ imagePicker: ImagePicker6) {
            self.parent6 = imagePicker
        }
        
    }
    
    
}
