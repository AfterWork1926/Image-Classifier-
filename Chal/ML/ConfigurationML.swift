import CoreML
import Vision
import CoreImage
struct Classifier {
    
    private var model: VNCoreMLModel?
    
    func detect(ciImage: CIImage) -> String? {
        
        guard let model = try? VNCoreMLModel(for: Fruits(configuration: MLModelConfiguration()).model)
        else {
            return nil
        }
        
        let request = VNCoreMLRequest(model: model)
        
        let handler = VNImageRequestHandler(ciImage: ciImage, options: [:])
        
        try? handler.perform([request])
        
        guard let results = request.results as? [VNClassificationObservation] else {
            return nil
        }
        
        if let firstResult = results.first {
            print(firstResult)
            print(firstResult.identifier)
            print(firstResult.confidence)
            
            return firstResult.identifier
        } else {
            return nil
        }
       
    }
}
