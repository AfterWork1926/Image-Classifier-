import SwiftUI

class ImageClassifier1: ObservableObject {
    
    @Published private var classifier = Classifier1()
    
    var imageClass: String? {
        classifier.results
    }
        
    // MARK: Intent(s)
    func detect1(uiImage: UIImage) {
        guard let ciImage = CIImage (image: uiImage) else { return }
        classifier.detect1(ciImage1: ciImage)
        
    }
        
}
