//
//  linkML.swift
//  Chal
//
//  Created by Roberto Farella on 24/02/22.
//

import SwiftUI
import CoreML

class ImageReader {
    
    private init() {}
    
    static let shared = ImageReader()
    
    func readImage(cgImage: CGImage) -> [String: Double]? {
        let Fruits = Fruits()
        do {
            let input = try FruitsInput(imageWith: cgImage)
            let modelResults = try Fruits.prediction(input: input)
            print("RESULT: - \(modelResults.classLabelProbs)")
            return modelResults.classLabelProbs
        } catch {
            print("Error:\n\(error)")
            return nil
        }
        
    }
}
