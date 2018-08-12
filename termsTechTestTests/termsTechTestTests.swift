//
//  termsTechTestTests.swift
//  termsTechTestTests
//
//  Created by Oliver Mahoney on 11/08/2018.
//  Copyright © 2018 Oliver Mahoney. All rights reserved.
//

import XCTest
@testable import termsTechTest

class termsTechTestTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testSimplePositiveProgression() {
        let inputArray = [5,7,9,15];
        let expectedAnswer = [11, 13];
        
        if let missingNumbers = APManager.findTheMissing(inputArray) {
            XCTAssert(missingNumbers.elementsEqual(expectedAnswer), "Simple positive number AP failed")
        }else{
            XCTFail("AP not found for sequence \(inputArray.description). Expecting \(expectedAnswer.description)")
        }
    }
    
    func testSimpleNegativeProgression() {
        let inputArray = [15, 9, 7, 5];
        let expectedAnswer = [13, 11];
        
        if let missingNumbers = APManager.findTheMissing(inputArray) {
            XCTAssert(missingNumbers.elementsEqual(expectedAnswer), "Simple negative number AP failed")
        }else{
            XCTFail("AP not found for sequence \(inputArray.description). Expecting \(expectedAnswer.description)")
        }
    }
    
    func testGoesNegativeProgression() {
        let inputArray = [15, 9, 7, 5, 3, 1, -3];
        let expectedAnswer = [13, 11, -1];
        
        if let missingNumbers = APManager.findTheMissing(inputArray) {
            XCTAssert(missingNumbers.elementsEqual(expectedAnswer), "AP that goes negative number AP failed")
        }else{
            XCTFail("AP not found for sequence \(inputArray.description). Expecting \(expectedAnswer.description)")
        }
    }
    
    func testGoesPostiveProgression() {
        let inputArray = [-3, 1, 3, 5, 7, 9, 15];
        let expectedAnswer = [-1, 11, 13];
        
        if let missingNumbers = APManager.findTheMissing(inputArray) {
            XCTAssert(missingNumbers.elementsEqual(expectedAnswer), "AP that goes negative number AP failed")
        }else{
            XCTFail("AP not found for sequence \(inputArray.description). Expecting \(expectedAnswer.description)")
        }
    }
    
    func testNoProgression() {
        let inputArray = [1, 1, 1];
        
        if let missingNumbers = APManager.findTheMissing(inputArray) {
            XCTAssert(missingNumbers.count == 0, "No AP should have returned an empty array")
        }
    }
    
    
    
}
