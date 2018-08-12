//
//  APManager.swift
//  termsTechTest
//
//  Created by Oliver Mahoney on 12/08/2018.
//  Copyright © 2018 Oliver Mahoney. All rights reserved.
//

import Foundation
class APManager {
    
    static func findTheMissing(_ arrayInput: [Int]) -> [Int]?{
        
        var array = arrayInput
        
        if array.count < 3 {
            return nil
        }
        
        var differences = [Int]()
        var consecutiveCount = 0
        var commonDifference: Int? = nil
        var missingElements = [Int]()
        
        for (index, _) in array.enumerated() {
            if index < array.count-1 { // -1 is not needed?
                differences.append(array[index+1] - array[index])
                
                if index > 0 {
                    let diff1 = differences[index-1]
                    let diff2 = differences[index]
                    if(diff1 == diff2){
                        consecutiveCount+=1
                        if consecutiveCount >= 1 {
                            commonDifference = diff1;
                            break
                        }
                    }
                }
            }
        }
        
        guard let commonDiff = commonDifference else {
            print("No common difference found")
            return nil
        }
        
        return getMissingElements(array, &missingElements, commonDifference: commonDiff)
    }
    
    static fileprivate func getMissingElements(_ arrayInput: [Int], _ missingElements: inout [Int], commonDifference: Int) -> [Int]{
        var array = arrayInput
        
        for (index, _) in array.enumerated() {
            if index > 0 && index < array.count {
                let diff = array[index] - array[index-1]
                if(diff != commonDifference){
                    let missingElement = array[index-1] + commonDifference
                    missingElements.append(missingElement)
                    array.insert(missingElement, at: index)
                    missingElements = getMissingElements(array, &missingElements, commonDifference: commonDifference)
                    break
                }
            }
        }
        
        return missingElements
    }
    
}
