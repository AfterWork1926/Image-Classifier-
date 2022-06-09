

//
//  ImageClassification.swift
//  SeeFood
//
//  Created by Leon Wei on 5/31/21.
//

import SwiftUI

class ImageClassifier5: ObservableObject {
    
    @Published private var classifier = Classifier5()
    
    var imageClass: String? {
        classifier.results
    }
        
    // MARK: Intent(s)
    func detect5(uiImage: UIImage) {
        guard let ciImage = CIImage (image: uiImage) else { return }
        classifier.detect5(ciImage5: ciImage)
        
    }
        
}
