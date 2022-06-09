
import CoreML
import Vision
import CoreImage

struct Classifier1 {
    
    private(set) var results: String?
    
    mutating func detect1(ciImage1: CIImage) {
        
        guard let model = try? VNCoreMLModel(for: vegetable(configuration: MLModelConfiguration()).model)
        else {
            return
        }
        
        let request = VNCoreMLRequest(model: model)
        
        let handler = VNImageRequestHandler(ciImage: ciImage1, options: [:])
        
        try? handler.perform([request])
        
        guard let results = request.results as? [VNClassificationObservation] else {
            return
        }
        
        if let firstResult1 = results.first {
            self.results = firstResult1.identifier
        }
        
    }
    
}

