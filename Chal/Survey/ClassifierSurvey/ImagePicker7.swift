//
//  ImagePicker.swift
//  SeeFood
//
//  Created by Leon Wei on 5/31/21.
//

import SwiftUI
import UIKit


struct ImagePicker7: UIViewControllerRepresentable {
    
    @Binding var uiImage7: UIImage?
    @Binding var isPresenting7: Bool
    @Binding var sourceType7: UIImagePickerController.SourceType
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker7 = UIImagePickerController()
        imagePicker7.sourceType = sourceType7
        imagePicker7.delegate = context.coordinator
        return imagePicker7
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
    }
    
    typealias UIViewControllerType = UIImagePickerController
        
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        let parent7: ImagePicker7
                
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            parent7.uiImage7 = info[.originalImage] as? UIImage
            parent7.isPresenting7 = false
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent7.isPresenting7 = false
        }
        
        init(_ imagePicker: ImagePicker7) {
            self.parent7 = imagePicker
        }
        
    }
    
    
}
