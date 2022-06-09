
//
//  ImageClassification.swift
//  SeeFood
//
//  Created by Leon Wei on 5/31/21.
//

import SwiftUI

class ImageClassifier6: ObservableObject {
    
    @Published private var classifier = Classifier6()
    
    var imageClass: String? {
        classifier.results
    }
        
    // MARK: Intent(s)
    func detect6(uiImage: UIImage) {
        guard let ciImage = CIImage (image: uiImage) else { return }
        classifier.detect6(ciImage6: ciImage)
        
    }
        
}
