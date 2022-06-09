import SwiftUI
import UIKit


struct ImagePicker1: UIViewControllerRepresentable {
    
    @Binding var uiImage2: UIImage?
    @Binding var isPresenting1: Bool
    @Binding var sourceType1: UIImagePickerController.SourceType
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker1 = UIImagePickerController()
        imagePicker1.sourceType = sourceType1
        imagePicker1.delegate = context.coordinator
        return imagePicker1
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
    }
    
    typealias UIViewControllerType = UIImagePickerController
        
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        let parent1: ImagePicker1
                
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            parent1.uiImage2 = info[.originalImage] as? UIImage
            parent1.isPresenting1 = false
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent1.isPresenting1 = false
        }
        
        init(_ imagePicker: ImagePicker1) {
            self.parent1 = imagePicker
        }
        
    }
    
    
}
