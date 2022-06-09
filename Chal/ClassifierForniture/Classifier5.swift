//
//  Classifier.swift
//  SeeFood
//
//  Created by Leon Wei on 5/31/21.
//

import CoreML
import Vision
import CoreImage

struct Classifier5 {
    
    private(set) var results: String?
    
    mutating func detect5(ciImage5: CIImage) {
        
        guard let model5 = try? VNCoreMLModel(for: MobileNetV2(configuration: MLModelConfiguration()).model)
        else {
            return
        }
        
        let request = VNCoreMLRequest(model: model5)
        
        let handler = VNImageRequestHandler(ciImage: ciImage5, options: [:])
        
        try? handler.perform([request])
        
        guard let results = request.results as? [VNClassificationObservation] else {
            return
        }
        
        if let firstResult5 = results.first {
            self.results = firstResult5.identifier
        }
        
    }
    
}

