//
//  Classifier.swift
//  SeeFood
//
//  Created by Leon Wei on 5/31/21.
//

import CoreML
import Vision
import CoreImage

struct Classifier6 {
    
    private(set) var results: String?
    
    mutating func detect6(ciImage6: CIImage) {
        
        guard let model6 = try? VNCoreMLModel(for: AppModel(configuration: MLModelConfiguration()).model)
        else {
            return
        }
        
        let request = VNCoreMLRequest(model: model6)
        
        let handler = VNImageRequestHandler(ciImage: ciImage6, options: [:])
        
        try? handler.perform([request])
        
        guard let results = request.results as? [VNClassificationObservation] else {
            return
        }
        
        if let firstResult6 = results.first {
            self.results = firstResult6.identifier
        }
        
    }
    
}

