
//
//  ImageClassification.swift
//  SeeFood
//
//  Created by Leon Wei on 5/31/21.
//

import SwiftUI

class ImageClassifier7: ObservableObject {
    
    @Published private var classifier = Classifier7()
    
    var imageClass: String? {
        classifier.results
    }
        
    // MARK: Intent(s)
    func detect7(uiImage: UIImage) {
        guard let ciImage = CIImage (image: uiImage) else { return }
        classifier.detect7(ciImage7: ciImage)
        
    }
        
}
