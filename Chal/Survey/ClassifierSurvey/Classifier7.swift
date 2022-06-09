//
//  Classifier.swift
//  SeeFood
//
//  Created by Leon Wei on 5/31/21.
//

import CoreML
import Vision
import CoreImage

struct Classifier7 {
    
    private(set) var results: String?
    
    mutating func detect7(ciImage7: CIImage) {
        
        guard let model7 = try? VNCoreMLModel(for: Survey(configuration: MLModelConfiguration()).model)
        else {
            return
        }
        
        let request = VNCoreMLRequest(model: model7)
        
        let handler = VNImageRequestHandler(ciImage: ciImage7, options: [:])
        
        try? handler.perform([request])
        
        guard let results = request.results as? [VNClassificationObservation] else {
            return
        }
        
        if let firstResult7 = results.first {
            self.results = firstResult7.identifier
        }
        
    }
    
}

